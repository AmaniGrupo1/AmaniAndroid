package androidx.navigationevent.compose;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.navigationevent.NavigationEventDispatcher;
import androidx.navigationevent.NavigationEventDispatcherOwner;
import androidx.navigationevent.NavigationEventInfo;
import androidx.navigationevent.NavigationEventTransitionState;
import androidx.profileinstaller.ProfileVerifier;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: NavigationEventHandler.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u001aq\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00010\b2\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00010\b2\b\b\u0002\u0010\n\u001a\u00020\u00062\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00010\b2\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00010\bH\u0007¢\u0006\u0002\u0010\r\u001aE\u0010\u000e\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u00032\b\b\u0002\u0010\n\u001a\u00020\u00062\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00010\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00010\bH\u0007¢\u0006\u0002\u0010\u000f\u001aE\u0010\u0010\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00010\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00010\bH\u0007¢\u0006\u0002\u0010\u000f¨\u0006\u0011"}, d2 = {"NavigationEventHandler", "", "state", "Landroidx/navigationevent/compose/NavigationEventState;", "Landroidx/navigationevent/NavigationEventInfo;", "isForwardEnabled", "", "onForwardCancelled", "Lkotlin/Function0;", "onForwardCompleted", "isBackEnabled", "onBackCancelled", "onBackCompleted", "(Landroidx/navigationevent/compose/NavigationEventState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V", "NavigationBackHandler", "(Landroidx/navigationevent/compose/NavigationEventState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V", "NavigationForwardHandler", "navigationevent-compose"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class NavigationEventHandlerKt {
    static final Unit NavigationBackHandler$lambda$25(NavigationEventState navigationEventState, boolean z, Function0 function0, Function0 function02, int i, int i2, Composer composer, int i3) {
        NavigationBackHandler(navigationEventState, z, function0, function02, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    static final Unit NavigationEventHandler$lambda$18(NavigationEventState navigationEventState, boolean z, Function0 function0, Function0 function02, boolean z2, Function0 function03, Function0 function04, int i, int i2, Composer composer, int i3) {
        NavigationEventHandler(navigationEventState, z, function0, function02, z2, function03, function04, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    static final Unit NavigationEventHandler$lambda$8(NavigationEventState navigationEventState, boolean z, Function0 function0, Function0 function02, boolean z2, Function0 function03, Function0 function04, int i, int i2, Composer composer, int i3) {
        NavigationEventHandler(navigationEventState, z, function0, function02, z2, function03, function04, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    static final Unit NavigationForwardHandler$lambda$32(NavigationEventState navigationEventState, boolean z, Function0 function0, Function0 function02, int i, int i2, Composer composer, int i3) {
        NavigationForwardHandler(navigationEventState, z, function0, function02, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:192:0x0342  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void NavigationEventHandler(NavigationEventState<? extends NavigationEventInfo> navigationEventState, boolean isForwardEnabled, Function0<Unit> function0, Function0<Unit> function02, boolean isBackEnabled, Function0<Unit> function03, Function0<Unit> function04, Composer $composer, final int $changed, final int i) {
        boolean z;
        Function0<Unit> function05;
        boolean z2;
        Function0<Unit> function06;
        final Function0<Unit> function07;
        final boolean isForwardEnabled2;
        final Function0<Unit> function08;
        final boolean isBackEnabled2;
        final Function0<Unit> function09;
        final Function0<Unit> function010;
        boolean isForwardEnabled3;
        final Function0<Unit> function011;
        boolean isForwardEnabled4;
        Function0<Unit> function012;
        final boolean isForwardEnabled5;
        Object value$iv;
        final ComposeNavigationEventHandler sourceHandler;
        boolean isForwardEnabled6;
        final NavigationEventState<? extends NavigationEventInfo> navigationEventState2 = navigationEventState;
        Composer $composer2 = $composer.startRestartGroup(898330592);
        ComposerKt.sourceInformation($composer2, "C(NavigationEventHandler)N(state,isForwardEnabled,onForwardCancelled,onForwardCompleted,isBackEnabled,onBackCancelled,onBackCompleted)73@3839L2,74@3880L2,77@3982L2,78@4020L2,80@4036L18,87@4356L7,93@4553L276,102@4846L467,102@4835L478,114@5343L373,114@5319L397:NavigationEventHandler.kt#wc8b4r");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changed(navigationEventState2) ? 4 : 2;
        }
        int i2 = i & 2;
        if (i2 != 0) {
            $dirty |= 48;
            z = isForwardEnabled;
        } else if (($changed & 48) == 0) {
            z = isForwardEnabled;
            $dirty |= $composer2.changed(z) ? 32 : 16;
        } else {
            z = isForwardEnabled;
        }
        int i3 = i & 4;
        if (i3 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer2.changedInstance(function0) ? 256 : 128;
        }
        int i4 = i & 8;
        if (i4 != 0) {
            $dirty |= 3072;
            function05 = function02;
        } else if (($changed & 3072) == 0) {
            function05 = function02;
            $dirty |= $composer2.changedInstance(function05) ? 2048 : 1024;
        } else {
            function05 = function02;
        }
        int i5 = i & 16;
        if (i5 != 0) {
            $dirty |= 24576;
            z2 = isBackEnabled;
        } else if (($changed & 24576) == 0) {
            z2 = isBackEnabled;
            $dirty |= $composer2.changed(z2) ? 16384 : 8192;
        } else {
            z2 = isBackEnabled;
        }
        int i6 = i & 32;
        if (i6 != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            function06 = function03;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            function06 = function03;
            $dirty |= $composer2.changedInstance(function06) ? 131072 : 65536;
        } else {
            function06 = function03;
        }
        int i7 = i & 64;
        if (i7 != 0) {
            $dirty |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty |= $composer2.changedInstance(function04) ? 1048576 : 524288;
        }
        if ($composer2.shouldExecute(($dirty & 599187) != 599186, $dirty & 1)) {
            boolean isForwardEnabled7 = i2 != 0 ? true : z;
            if (i3 != 0) {
                ComposerKt.sourceInformationMarkerStart($composer2, 7279202, "CC(remember):NavigationEventHandler.kt#9igjgp");
                Object it$iv = $composer2.rememberedValue();
                isForwardEnabled3 = isForwardEnabled7;
                if (it$iv == Composer.INSTANCE.getEmpty()) {
                    Object value$iv2 = new Function0() { // from class: androidx.navigationevent.compose.NavigationEventHandlerKt$$ExternalSyntheticLambda8
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return Unit.INSTANCE;
                        }
                    };
                    $composer2.updateRememberedValue(value$iv2);
                    it$iv = value$iv2;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                function011 = (Function0) it$iv;
            } else {
                isForwardEnabled3 = isForwardEnabled7;
                function011 = function0;
            }
            if (i4 != 0) {
                ComposerKt.sourceInformationMarkerStart($composer2, 7280514, "CC(remember):NavigationEventHandler.kt#9igjgp");
                Object it$iv2 = $composer2.rememberedValue();
                if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                    Object value$iv3 = new Function0() { // from class: androidx.navigationevent.compose.NavigationEventHandlerKt$$ExternalSyntheticLambda9
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return Unit.INSTANCE;
                        }
                    };
                    $composer2.updateRememberedValue(value$iv3);
                    it$iv2 = value$iv3;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                function09 = (Function0) it$iv2;
            } else {
                function09 = function05;
            }
            isBackEnabled2 = i5 != 0 ? true : z2;
            if (i6 != 0) {
                ComposerKt.sourceInformationMarkerStart($composer2, 7283778, "CC(remember):NavigationEventHandler.kt#9igjgp");
                Object it$iv3 = $composer2.rememberedValue();
                if (it$iv3 == Composer.INSTANCE.getEmpty()) {
                    Object value$iv4 = new Function0() { // from class: androidx.navigationevent.compose.NavigationEventHandlerKt$$ExternalSyntheticLambda10
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return Unit.INSTANCE;
                        }
                    };
                    $composer2.updateRememberedValue(value$iv4);
                    it$iv3 = value$iv4;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                function08 = (Function0) it$iv3;
            } else {
                function08 = function06;
            }
            if (i7 != 0) {
                ComposerKt.sourceInformationMarkerStart($composer2, 7284994, "CC(remember):NavigationEventHandler.kt#9igjgp");
                Object it$iv4 = $composer2.rememberedValue();
                if (it$iv4 == Composer.INSTANCE.getEmpty()) {
                    Object value$iv5 = new Function0() { // from class: androidx.navigationevent.compose.NavigationEventHandlerKt$$ExternalSyntheticLambda11
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return Unit.INSTANCE;
                        }
                    };
                    $composer2.updateRememberedValue(value$iv5);
                    it$iv4 = value$iv5;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                function010 = (Function0) it$iv4;
            } else {
                function010 = function04;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(898330592, $dirty, -1, "androidx.navigationevent.compose.NavigationEventHandler (NavigationEventHandler.kt:79)");
            }
            if (NavigationEventHandler_androidKt.isInspectionMode($composer2, 0)) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    final boolean isForwardEnabled8 = isForwardEnabled3;
                    scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.navigationevent.compose.NavigationEventHandlerKt$$ExternalSyntheticLambda12
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return NavigationEventHandlerKt.NavigationEventHandler$lambda$8(navigationEventState2, isForwardEnabled8, function011, function09, isBackEnabled2, function08, function010, $changed, i, (Composer) obj, ((Integer) obj2).intValue());
                        }
                    });
                    return;
                }
                return;
            }
            int $dirty2 = $dirty;
            boolean isForwardEnabled9 = isForwardEnabled3;
            NavigationEventDispatcherOwner current = LocalNavigationEventDispatcherOwner.INSTANCE.getCurrent($composer2, 6);
            if (current == null) {
                throw new IllegalStateException("No NavigationEventDispatcher was provided via LocalNavigationEventDispatcherOwner".toString());
            }
            final NavigationEventDispatcher dispatcher = current.getNavigationEventDispatcher();
            ComposerKt.sourceInformationMarkerStart($composer2, 7302324, "CC(remember):NavigationEventHandler.kt#9igjgp");
            boolean invalid$iv = ($dirty2 & 14) == 4;
            Object it$iv5 = $composer2.rememberedValue();
            if (invalid$iv || it$iv5 == Composer.INSTANCE.getEmpty()) {
                isForwardEnabled4 = isForwardEnabled9;
                function012 = function011;
                Object value$iv6 = new ComposeNavigationEventHandler(navigationEventState2.getCurrentInfo(), new Function1() { // from class: androidx.navigationevent.compose.NavigationEventHandlerKt$$ExternalSyntheticLambda13
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return NavigationEventHandlerKt.NavigationEventHandler$lambda$11$lambda$10(navigationEventState2, (NavigationEventTransitionState) obj);
                    }
                });
                $composer2.updateRememberedValue(value$iv6);
                it$iv5 = value$iv6;
            } else {
                isForwardEnabled4 = isForwardEnabled9;
                function012 = function011;
            }
            final ComposeNavigationEventHandler sourceHandler2 = (ComposeNavigationEventHandler) it$iv5;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerStart($composer2, 7311891, "CC(remember):NavigationEventHandler.kt#9igjgp");
            boolean invalid$iv2 = $composer2.changedInstance(sourceHandler2) | (($dirty2 & 112) == 32) | (($dirty2 & 896) == 256) | (($dirty2 & 7168) == 2048) | ((57344 & $dirty2) == 16384) | ((458752 & $dirty2) == 131072) | ((3670016 & $dirty2) == 1048576) | (($dirty2 & 14) == 4);
            Object it$iv6 = $composer2.rememberedValue();
            if (invalid$iv2 || it$iv6 == Composer.INSTANCE.getEmpty()) {
                function07 = function012;
                isForwardEnabled5 = isForwardEnabled4;
                value$iv = new Function0() { // from class: androidx.navigationevent.compose.NavigationEventHandlerKt$$ExternalSyntheticLambda14
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return NavigationEventHandlerKt.NavigationEventHandler$lambda$13$lambda$12(sourceHandler2, isForwardEnabled5, function07, function09, isBackEnabled2, function08, function010, navigationEventState2);
                    }
                };
                sourceHandler = sourceHandler2;
                navigationEventState2 = navigationEventState2;
                $composer2.updateRememberedValue(value$iv);
            } else {
                isForwardEnabled5 = isForwardEnabled4;
                function07 = function012;
                value$iv = it$iv6;
                sourceHandler = sourceHandler2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            EffectsKt.SideEffect((Function0) value$iv, $composer2, 0);
            ComposerKt.sourceInformationMarkerStart($composer2, 7327701, "CC(remember):NavigationEventHandler.kt#9igjgp");
            boolean invalid$iv3 = (($dirty2 & 14) == 4) | $composer2.changedInstance(sourceHandler) | $composer2.changedInstance(dispatcher);
            Object it$iv7 = $composer2.rememberedValue();
            if (invalid$iv3) {
                isForwardEnabled6 = isForwardEnabled5;
            } else {
                isForwardEnabled6 = isForwardEnabled5;
                if (it$iv7 == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                EffectsKt.DisposableEffect(navigationEventState2, (Function1<? super DisposableEffectScope, ? extends DisposableEffectResult>) it$iv7, $composer2, $dirty2 & 14);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                isForwardEnabled2 = isForwardEnabled6;
            }
            Object value$iv7 = new Function1() { // from class: androidx.navigationevent.compose.NavigationEventHandlerKt$$ExternalSyntheticLambda15
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return NavigationEventHandlerKt.NavigationEventHandler$lambda$17$lambda$16(navigationEventState2, sourceHandler, dispatcher, (DisposableEffectScope) obj);
                }
            };
            $composer2.updateRememberedValue(value$iv7);
            it$iv7 = value$iv7;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            EffectsKt.DisposableEffect(navigationEventState2, (Function1<? super DisposableEffectScope, ? extends DisposableEffectResult>) it$iv7, $composer2, $dirty2 & 14);
            if (ComposerKt.isTraceInProgress()) {
            }
            isForwardEnabled2 = isForwardEnabled6;
        } else {
            $composer2.skipToGroupEnd();
            function07 = function0;
            isForwardEnabled2 = z;
            function08 = function06;
            isBackEnabled2 = z2;
            function09 = function05;
            function010 = function04;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup2 = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup2 != null) {
            scopeUpdateScopeEndRestartGroup2.updateScope(new Function2() { // from class: androidx.navigationevent.compose.NavigationEventHandlerKt$$ExternalSyntheticLambda16
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return NavigationEventHandlerKt.NavigationEventHandler$lambda$18(navigationEventState2, isForwardEnabled2, function07, function09, isBackEnabled2, function08, function010, $changed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    static final Unit NavigationEventHandler$lambda$11$lambda$10(NavigationEventState $state, NavigationEventTransitionState transitionState) {
        $state.setTransitionState$navigationevent_compose(transitionState);
        return Unit.INSTANCE;
    }

    static final Unit NavigationEventHandler$lambda$13$lambda$12(ComposeNavigationEventHandler $sourceHandler, boolean $isForwardEnabled, Function0 $onForwardCancelled, Function0 $onForwardCompleted, boolean $isBackEnabled, Function0 $onBackCancelled, Function0 $onBackCompleted, NavigationEventState $state) {
        $sourceHandler.setForwardEnabled($isForwardEnabled);
        $sourceHandler.setCurrentOnForwardCancelled($onForwardCancelled);
        $sourceHandler.setCurrentOnForwardCompleted($onForwardCompleted);
        $sourceHandler.setBackEnabled($isBackEnabled);
        $sourceHandler.setCurrentOnBackCancelled($onBackCancelled);
        $sourceHandler.setCurrentOnBackCompleted($onBackCompleted);
        $sourceHandler.setInfo($state.getCurrentInfo(), $state.getBackInfo(), $state.getForwardInfo());
        return Unit.INSTANCE;
    }

    static final DisposableEffectResult NavigationEventHandler$lambda$17$lambda$16(final NavigationEventState $state, final ComposeNavigationEventHandler $sourceHandler, NavigationEventDispatcher $dispatcher, DisposableEffectScope $this$DisposableEffect) {
        if (!($state.getSourceHandler$navigationevent_compose() == null)) {
            throw new IllegalArgumentException(("NavigationEventState '" + $state + "' is already registered with a NavigationEventHandler '" + $sourceHandler + "'.").toString());
        }
        $state.setSourceHandler$navigationevent_compose($sourceHandler);
        NavigationEventDispatcher.addHandler$default($dispatcher, $sourceHandler, 0, 2, null);
        return new DisposableEffectResult() { // from class: androidx.navigationevent.compose.NavigationEventHandlerKt$NavigationEventHandler$lambda$17$lambda$16$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void dispose() {
                $sourceHandler.remove();
                $state.setSourceHandler$navigationevent_compose(null);
            }
        };
    }

    public static final void NavigationBackHandler(final NavigationEventState<? extends NavigationEventInfo> navigationEventState, boolean isBackEnabled, Function0<Unit> function0, final Function0<Unit> function02, Composer $composer, final int $changed, final int i) {
        NavigationEventState<? extends NavigationEventInfo> navigationEventState2;
        boolean z;
        Function0<Unit> function03;
        Function0<Unit> function04;
        final boolean isBackEnabled2;
        final Function0<Unit> function05;
        boolean isBackEnabled3;
        Function0<Unit> function06;
        Composer $composer2 = $composer.startRestartGroup(1220469155);
        ComposerKt.sourceInformation($composer2, "C(NavigationBackHandler)N(state,isBackEnabled,onBackCancelled,onBackCompleted)150@6741L2,155@6862L2,156@6895L2,153@6786L296:NavigationEventHandler.kt#wc8b4r");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            navigationEventState2 = navigationEventState;
            $dirty |= $composer2.changed(navigationEventState2) ? 4 : 2;
        } else {
            navigationEventState2 = navigationEventState;
        }
        int i2 = i & 2;
        if (i2 != 0) {
            $dirty |= 48;
            z = isBackEnabled;
        } else if (($changed & 48) == 0) {
            z = isBackEnabled;
            $dirty |= $composer2.changed(z) ? 32 : 16;
        } else {
            z = isBackEnabled;
        }
        int i3 = i & 4;
        if (i3 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            function03 = function0;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            function03 = function0;
            $dirty |= $composer2.changedInstance(function03) ? 256 : 128;
        } else {
            function03 = function0;
        }
        if (($changed & 3072) == 0) {
            function04 = function02;
            $dirty |= $composer2.changedInstance(function04) ? 2048 : 1024;
        } else {
            function04 = function02;
        }
        if (!$composer2.shouldExecute(($dirty & 1171) != 1170, $dirty & 1)) {
            $composer2.skipToGroupEnd();
            isBackEnabled2 = z;
            function05 = function03;
        } else {
            if (i2 != 0) {
                isBackEnabled3 = true;
            } else {
                isBackEnabled3 = z;
            }
            if (i3 != 0) {
                ComposerKt.sourceInformationMarkerStart($composer2, 344791685, "CC(remember):NavigationEventHandler.kt#9igjgp");
                Object it$iv = $composer2.rememberedValue();
                if (it$iv == Composer.INSTANCE.getEmpty()) {
                    Object value$iv = new Function0() { // from class: androidx.navigationevent.compose.NavigationEventHandlerKt$$ExternalSyntheticLambda4
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return Unit.INSTANCE;
                        }
                    };
                    $composer2.updateRememberedValue(value$iv);
                    it$iv = value$iv;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                function06 = (Function0) it$iv;
            } else {
                function06 = function03;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1220469155, $dirty, -1, "androidx.navigationevent.compose.NavigationBackHandler (NavigationEventHandler.kt:152)");
            }
            ComposerKt.sourceInformationMarkerStart($composer2, 344795557, "CC(remember):NavigationEventHandler.kt#9igjgp");
            Object it$iv2 = $composer2.rememberedValue();
            if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                Object value$iv2 = new Function0() { // from class: androidx.navigationevent.compose.NavigationEventHandlerKt$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Unit.INSTANCE;
                    }
                };
                $composer2.updateRememberedValue(value$iv2);
                it$iv2 = value$iv2;
            }
            Function0 function07 = (Function0) it$iv2;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerStart($composer2, 344796613, "CC(remember):NavigationEventHandler.kt#9igjgp");
            Object it$iv3 = $composer2.rememberedValue();
            if (it$iv3 == Composer.INSTANCE.getEmpty()) {
                Object value$iv3 = new Function0() { // from class: androidx.navigationevent.compose.NavigationEventHandlerKt$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Unit.INSTANCE;
                    }
                };
                $composer2.updateRememberedValue(value$iv3);
                it$iv3 = value$iv3;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            NavigationEventHandler(navigationEventState2, false, function07, (Function0) it$iv3, isBackEnabled3, function06, function04, $composer2, ($dirty & 14) | 3504 | (($dirty << 9) & 57344) | (($dirty << 9) & 458752) | (3670016 & ($dirty << 9)), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            isBackEnabled2 = isBackEnabled3;
            function05 = function06;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.navigationevent.compose.NavigationEventHandlerKt$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return NavigationEventHandlerKt.NavigationBackHandler$lambda$25(navigationEventState, isBackEnabled2, function05, function02, $changed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    public static final void NavigationForwardHandler(final NavigationEventState<? extends NavigationEventInfo> navigationEventState, boolean isForwardEnabled, Function0<Unit> function0, final Function0<Unit> function02, Composer $composer, final int $changed, final int i) {
        NavigationEventState<? extends NavigationEventInfo> navigationEventState2;
        boolean z;
        Function0<Unit> function03;
        final boolean isForwardEnabled2;
        final Function0<Unit> function04;
        boolean isForwardEnabled3;
        Function0<Unit> function05;
        Composer $composer2 = $composer.startRestartGroup(-1737636087);
        ComposerKt.sourceInformation($composer2, "C(NavigationForwardHandler)N(state,isForwardEnabled,onForwardCancelled,onForwardCompleted)185@8106L2,193@8370L2,194@8400L2,188@8154L302:NavigationEventHandler.kt#wc8b4r");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            navigationEventState2 = navigationEventState;
            $dirty |= $composer2.changed(navigationEventState2) ? 4 : 2;
        } else {
            navigationEventState2 = navigationEventState;
        }
        int i2 = i & 2;
        if (i2 != 0) {
            $dirty |= 48;
            z = isForwardEnabled;
        } else if (($changed & 48) == 0) {
            z = isForwardEnabled;
            $dirty |= $composer2.changed(z) ? 32 : 16;
        } else {
            z = isForwardEnabled;
        }
        int i3 = i & 4;
        if (i3 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer2.changedInstance(function0) ? 256 : 128;
        }
        if (($changed & 3072) == 0) {
            function03 = function02;
            $dirty |= $composer2.changedInstance(function03) ? 2048 : 1024;
        } else {
            function03 = function02;
        }
        if (!$composer2.shouldExecute(($dirty & 1171) != 1170, $dirty & 1)) {
            $composer2.skipToGroupEnd();
            isForwardEnabled2 = z;
            function04 = function0;
        } else {
            if (i2 != 0) {
                isForwardEnabled3 = true;
            } else {
                isForwardEnabled3 = z;
            }
            if (i3 != 0) {
                ComposerKt.sourceInformationMarkerStart($composer2, 874004363, "CC(remember):NavigationEventHandler.kt#9igjgp");
                Object it$iv = $composer2.rememberedValue();
                if (it$iv == Composer.INSTANCE.getEmpty()) {
                    Object value$iv = new Function0() { // from class: androidx.navigationevent.compose.NavigationEventHandlerKt$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return Unit.INSTANCE;
                        }
                    };
                    $composer2.updateRememberedValue(value$iv);
                    it$iv = value$iv;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                function05 = (Function0) it$iv;
            } else {
                function05 = function0;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1737636087, $dirty, -1, "androidx.navigationevent.compose.NavigationForwardHandler (NavigationEventHandler.kt:187)");
            }
            ComposerKt.sourceInformationMarkerStart($composer2, 874012811, "CC(remember):NavigationEventHandler.kt#9igjgp");
            Object it$iv2 = $composer2.rememberedValue();
            if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                Object value$iv2 = new Function0() { // from class: androidx.navigationevent.compose.NavigationEventHandlerKt$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Unit.INSTANCE;
                    }
                };
                $composer2.updateRememberedValue(value$iv2);
                it$iv2 = value$iv2;
            }
            Function0 function06 = (Function0) it$iv2;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerStart($composer2, 874013771, "CC(remember):NavigationEventHandler.kt#9igjgp");
            Object it$iv3 = $composer2.rememberedValue();
            if (it$iv3 == Composer.INSTANCE.getEmpty()) {
                Object value$iv3 = new Function0() { // from class: androidx.navigationevent.compose.NavigationEventHandlerKt$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Unit.INSTANCE;
                    }
                };
                $composer2.updateRememberedValue(value$iv3);
                it$iv3 = value$iv3;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            NavigationEventHandler(navigationEventState2, isForwardEnabled3, function05, function03, false, function06, (Function0) it$iv3, $composer2, ($dirty & 14) | 1794048 | ($dirty & 112) | ($dirty & 896) | ($dirty & 7168), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            isForwardEnabled2 = isForwardEnabled3;
            function04 = function05;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.navigationevent.compose.NavigationEventHandlerKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return NavigationEventHandlerKt.NavigationForwardHandler$lambda$32(navigationEventState, isForwardEnabled2, function04, function02, $changed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }
}
