package androidx.activity.compose;

import androidx.activity.ActivityFlags;
import androidx.activity.OnBackPressedDispatcherOwner;
import androidx.activity.compose.internal.BackHandlerDispatcherCompat;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.lifecycle.compose.LifecycleEffectKt;
import androidx.lifecycle.compose.LifecycleStartStopEffectScope;
import androidx.lifecycle.compose.LifecycleStopOrDisposeEffectResult;
import androidx.navigationevent.NavigationEventDispatcher;
import androidx.navigationevent.NavigationEventDispatcherOwner;
import androidx.navigationevent.compose.LocalNavigationEventDispatcherOwner;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: BackHandler.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a%\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00010\u0005H\u0007¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"BackHandler", "", "enabled", "", "onBack", "Lkotlin/Function0;", "(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V", "activity-compose"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class BackHandlerKt {
    static final Unit BackHandler$lambda$7(boolean z, Function0 function0, int i, int i2, Composer composer, int i3) {
        BackHandler(z, function0, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static final void BackHandler(boolean enabled, final Function0<Unit> function0, Composer $composer, final int $changed, final int i) {
        boolean z;
        final boolean enabled2;
        Composer $composer2 = $composer.startRestartGroup(-361453782);
        ComposerKt.sourceInformation($composer2, "C(BackHandler)N(enabled,onBack)110@5097L7,119@5502L427,128@5954L27,130@6008L115:BackHandler.kt#q1dkbc");
        int $dirty = $changed;
        int i2 = i & 1;
        if (i2 != 0) {
            $dirty |= 6;
            z = enabled;
        } else if (($changed & 6) == 0) {
            z = enabled;
            $dirty |= $composer2.changed(z) ? 4 : 2;
        } else {
            z = enabled;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changedInstance(function0) ? 32 : 16;
        }
        int $dirty2 = $dirty;
        if (!$composer2.shouldExecute(($dirty2 & 19) != 18, $dirty2 & 1)) {
            $composer2.skipToGroupEnd();
            enabled2 = z;
        } else {
            enabled2 = i2 != 0 ? true : z;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-361453782, $dirty2, -1, "androidx.activity.compose.BackHandler (BackHandler.kt:107)");
            }
            Object owner = LocalNavigationEventDispatcherOwner.INSTANCE.getCurrent($composer2, LocalNavigationEventDispatcherOwner.$stable);
            if (owner != null) {
                $composer2.startReplaceGroup(535271790);
                $composer2.endReplaceGroup();
            } else {
                $composer2.startReplaceGroup(535274673);
                ComposerKt.sourceInformation($composer2, "111@5154L7");
                owner = LocalOnBackPressedDispatcherOwner.INSTANCE.getCurrent($composer2, 6);
                $composer2.endReplaceGroup();
            }
            if (owner == null) {
                throw new IllegalStateException("No NavigationEventDispatcherOwner was provided via LocalNavigationEventDispatcherOwner and no OnBackPressedDispatcherOwner was provided via LocalOnBackPressedDispatcherOwner. Please provide one of the two.".toString());
            }
            ComposerKt.sourceInformationMarkerStart($composer2, 535286229, "CC(remember):BackHandler.kt#9igjgp");
            boolean invalid$iv = $composer2.changed(owner);
            Object it$iv = $composer2.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                NavigationEventDispatcherOwner navigationEventDispatcherOwner = owner instanceof NavigationEventDispatcherOwner ? (NavigationEventDispatcherOwner) owner : null;
                NavigationEventDispatcher navigationEventDispatcher = navigationEventDispatcherOwner != null ? navigationEventDispatcherOwner.getNavigationEventDispatcher() : null;
                OnBackPressedDispatcherOwner onBackPressedDispatcherOwner = owner instanceof OnBackPressedDispatcherOwner ? (OnBackPressedDispatcherOwner) owner : null;
                Object value$iv = new BackHandlerDispatcherCompat(navigationEventDispatcher, onBackPressedDispatcherOwner != null ? onBackPressedDispatcherOwner.getOnBackPressedDispatcher() : null);
                $composer2.updateRememberedValue(value$iv);
                it$iv = value$iv;
            }
            final BackHandlerDispatcherCompat dispatcher = (BackHandlerDispatcherCompat) it$iv;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            long compositeKey = ComposablesKt.getCurrentCompositeKeyHashCode($composer2, 0);
            ComposerKt.sourceInformationMarkerStart($composer2, 535302109, "CC(remember):BackHandler.kt#9igjgp");
            boolean invalid$iv2 = $composer2.changed(dispatcher) | $composer2.changed(compositeKey);
            Object it$iv2 = $composer2.rememberedValue();
            if (invalid$iv2 || it$iv2 == Composer.INSTANCE.getEmpty()) {
                Object value$iv2 = new ComposeBackHandler(new BackHandlerInfo(owner, compositeKey));
                $composer2.updateRememberedValue(value$iv2);
                it$iv2 = value$iv2;
            }
            final ComposeBackHandler handler = (ComposeBackHandler) it$iv2;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            if (ActivityFlags.isOnBackPressedLifecycleOrderMaintained) {
                $composer2.startReplaceGroup(-585307852);
                ComposerKt.sourceInformation($composer2, "136@6310L43,136@6299L54,140@6579L117,140@6540L156,145@6744L114,145@6706L152");
                ComposerKt.sourceInformationMarkerStart($composer2, 535311701, "CC(remember):BackHandler.kt#9igjgp");
                boolean invalid$iv3 = $composer2.changedInstance(handler) | (($dirty2 & 112) == 32);
                Object it$iv3 = $composer2.rememberedValue();
                if (invalid$iv3 || it$iv3 == Composer.INSTANCE.getEmpty()) {
                    Object value$iv3 = new Function0() { // from class: androidx.activity.compose.BackHandlerKt$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BackHandlerKt.BackHandler$lambda$2$0(handler, function0);
                        }
                    };
                    $composer2.updateRememberedValue(value$iv3);
                    it$iv3 = value$iv3;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                EffectsKt.SideEffect((Function0) it$iv3, $composer2, 0);
                Boolean boolValueOf = Boolean.valueOf(enabled2);
                ComposerKt.sourceInformationMarkerStart($composer2, 535320383, "CC(remember):BackHandler.kt#9igjgp");
                boolean invalid$iv4 = $composer2.changedInstance(handler) | (($dirty2 & 14) == 4);
                Object it$iv4 = $composer2.rememberedValue();
                if (invalid$iv4 || it$iv4 == Composer.INSTANCE.getEmpty()) {
                    Object value$iv4 = new Function1() { // from class: androidx.activity.compose.BackHandlerKt$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return BackHandlerKt.BackHandler$lambda$3$0(handler, enabled2, (LifecycleStartStopEffectScope) obj);
                        }
                    };
                    $composer2.updateRememberedValue(value$iv4);
                    it$iv4 = value$iv4;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                LifecycleEffectKt.LifecycleStartEffect(boolValueOf, handler, null, (Function1) it$iv4, $composer2, $dirty2 & 14, 4);
                ComposerKt.sourceInformationMarkerStart($composer2, 535325660, "CC(remember):BackHandler.kt#9igjgp");
                boolean invalid$iv5 = $composer2.changedInstance(dispatcher) | $composer2.changedInstance(handler);
                Object it$iv5 = $composer2.rememberedValue();
                if (invalid$iv5 || it$iv5 == Composer.INSTANCE.getEmpty()) {
                    Object value$iv5 = new Function1() { // from class: androidx.activity.compose.BackHandlerKt$$ExternalSyntheticLambda2
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return BackHandlerKt.BackHandler$lambda$4$0(dispatcher, handler, (DisposableEffectScope) obj);
                        }
                    };
                    $composer2.updateRememberedValue(value$iv5);
                    it$iv5 = value$iv5;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                EffectsKt.DisposableEffect(dispatcher, handler, (Function1) it$iv5, $composer2, 0);
                $composer2.endReplaceGroup();
            } else {
                $composer2.startReplaceGroup(-584634160);
                ComposerKt.sourceInformation($composer2, "151@6992L107,151@6981L118,158@7328L120,158@7286L162");
                ComposerKt.sourceInformationMarkerStart($composer2, 535333589, "CC(remember):BackHandler.kt#9igjgp");
                boolean invalid$iv6 = $composer2.changedInstance(handler) | (($dirty2 & 14) == 4) | (($dirty2 & 112) == 32);
                Object it$iv6 = $composer2.rememberedValue();
                if (invalid$iv6 || it$iv6 == Composer.INSTANCE.getEmpty()) {
                    Object value$iv6 = new Function0() { // from class: androidx.activity.compose.BackHandlerKt$$ExternalSyntheticLambda3
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BackHandlerKt.BackHandler$lambda$5$0(handler, enabled2, function0);
                        }
                    };
                    $composer2.updateRememberedValue(value$iv6);
                    it$iv6 = value$iv6;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                EffectsKt.SideEffect((Function0) it$iv6, $composer2, 0);
                ComposerKt.sourceInformationMarkerStart($composer2, 535344354, "CC(remember):BackHandler.kt#9igjgp");
                boolean invalid$iv7 = $composer2.changedInstance(dispatcher) | $composer2.changedInstance(handler);
                Object it$iv7 = $composer2.rememberedValue();
                if (invalid$iv7 || it$iv7 == Composer.INSTANCE.getEmpty()) {
                    Object value$iv7 = new Function1() { // from class: androidx.activity.compose.BackHandlerKt$$ExternalSyntheticLambda4
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return BackHandlerKt.BackHandler$lambda$6$0(dispatcher, handler, (LifecycleStartStopEffectScope) obj);
                        }
                    };
                    $composer2.updateRememberedValue(value$iv7);
                    it$iv7 = value$iv7;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                LifecycleEffectKt.LifecycleStartEffect(dispatcher, handler, null, (Function1) it$iv7, $composer2, 0, 4);
                $composer2.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.activity.compose.BackHandlerKt$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return BackHandlerKt.BackHandler$lambda$7(enabled2, function0, $changed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit BackHandler$lambda$2$0(ComposeBackHandler $handler, Function0 $onBack) {
        $handler.setCurrentOnBackCompleted($onBack);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LifecycleStopOrDisposeEffectResult BackHandler$lambda$3$0(final ComposeBackHandler $handler, boolean $enabled, final LifecycleStartStopEffectScope $this$LifecycleStartEffect) {
        $handler.setBackEnabled($enabled);
        return new LifecycleStopOrDisposeEffectResult() { // from class: androidx.activity.compose.BackHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1
            @Override // androidx.lifecycle.compose.LifecycleStopOrDisposeEffectResult
            public void runStopOrDisposeEffect() {
                LifecycleStartStopEffectScope lifecycleStartStopEffectScope = $this$LifecycleStartEffect;
                $handler.setBackEnabled(false);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DisposableEffectResult BackHandler$lambda$4$0(final BackHandlerDispatcherCompat $dispatcher, final ComposeBackHandler $handler, DisposableEffectScope $this$DisposableEffect) {
        $dispatcher.addHandler($handler);
        return new DisposableEffectResult() { // from class: androidx.activity.compose.BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void dispose() throws Exception {
                $dispatcher.removeHandler($handler);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit BackHandler$lambda$5$0(ComposeBackHandler $handler, boolean $enabled, Function0 $onBack) {
        $handler.setBackEnabled($enabled);
        $handler.setCurrentOnBackCompleted($onBack);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LifecycleStopOrDisposeEffectResult BackHandler$lambda$6$0(final BackHandlerDispatcherCompat $dispatcher, final ComposeBackHandler $handler, final LifecycleStartStopEffectScope $this$LifecycleStartEffect) {
        $dispatcher.addHandler($handler);
        return new LifecycleStopOrDisposeEffectResult() { // from class: androidx.activity.compose.BackHandlerKt$BackHandler$lambda$6$0$$inlined$onStopOrDispose$1
            @Override // androidx.lifecycle.compose.LifecycleStopOrDisposeEffectResult
            public void runStopOrDisposeEffect() throws Exception {
                LifecycleStartStopEffectScope lifecycleStartStopEffectScope = $this$LifecycleStartEffect;
                $dispatcher.removeHandler($handler);
            }
        };
    }
}
