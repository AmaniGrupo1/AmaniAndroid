package androidx.activity.compose;

import androidx.activity.ActivityFlags;
import androidx.activity.BackEventCompat;
import androidx.activity.OnBackPressedDispatcherOwner;
import androidx.activity.compose.internal.BackHandlerDispatcherCompat;
import androidx.autofill.HintConstants;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.compose.LifecycleEffectKt;
import androidx.lifecycle.compose.LifecycleStartStopEffectScope;
import androidx.lifecycle.compose.LifecycleStopOrDisposeEffectResult;
import androidx.navigationevent.NavigationEventDispatcher;
import androidx.navigationevent.NavigationEventDispatcherOwner;
import androidx.navigationevent.compose.LocalNavigationEventDispatcherOwner;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: PredictiveBackHandler.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u001aZ\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032A\u0010\u0004\u001a=\b\u0001\u0012\u001e\u0012\u001c\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\b\b¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u000f\u0012\r\u0012\t\u0012\u00070\u0001¢\u0006\u0002\b\b0\f\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0005H\u0007¢\u0006\u0002\u0010\u000e¨\u0006\u000f"}, d2 = {"PredictiveBackHandler", "", "enabled", "", "onBack", "Lkotlin/Function2;", "Lkotlinx/coroutines/flow/Flow;", "Landroidx/activity/BackEventCompat;", "Lkotlin/jvm/JvmSuppressWildcards;", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, NotificationCompat.CATEGORY_PROGRESS, "Lkotlin/coroutines/Continuation;", "", "(ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V", "activity-compose"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class PredictiveBackHandlerKt {
    static final Unit PredictiveBackHandler$lambda$7(boolean z, Function2 function2, int i, int i2, Composer composer, int i3) {
        PredictiveBackHandler(z, function2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:97:0x0253  */
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void PredictiveBackHandler(boolean enabled, final Function2<Flow<BackEventCompat>, ? super Continuation<Unit>, ? extends Object> function2, Composer $composer, final int $changed, final int i) {
        boolean z;
        final boolean enabled2;
        int i2;
        Boolean bool;
        boolean invalid$iv;
        Object it$iv;
        Composer $composer2 = $composer.startRestartGroup(-642000585);
        ComposerKt.sourceInformation($composer2, "C(PredictiveBackHandler)N(enabled,onBack)121@5572L7,130@5977L427,139@6422L24,140@6470L27,142@6524L196:PredictiveBackHandler.kt#q1dkbc");
        int $dirty = $changed;
        int i3 = i & 1;
        if (i3 != 0) {
            $dirty |= 6;
            z = enabled;
        } else if (($changed & 6) == 0) {
            z = enabled;
            $dirty |= $composer2.changed(z) ? 4 : 2;
        } else {
            z = enabled;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changedInstance(function2) ? 32 : 16;
        }
        int $dirty2 = $dirty;
        if ($composer2.shouldExecute(($dirty2 & 19) != 18, $dirty2 & 1)) {
            enabled2 = i3 != 0 ? true : z;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-642000585, $dirty2, -1, "androidx.activity.compose.PredictiveBackHandler (PredictiveBackHandler.kt:118)");
            }
            Object owner = LocalNavigationEventDispatcherOwner.INSTANCE.getCurrent($composer2, LocalNavigationEventDispatcherOwner.$stable);
            if (owner == null) {
                $composer2.startReplaceGroup(1512740606);
                ComposerKt.sourceInformation($composer2, "122@5629L7");
                owner = LocalOnBackPressedDispatcherOwner.INSTANCE.getCurrent($composer2, 6);
                $composer2.endReplaceGroup();
            } else {
                $composer2.startReplaceGroup(1512737723);
                $composer2.endReplaceGroup();
            }
            if (owner == null) {
                throw new IllegalStateException("No NavigationEventDispatcherOwner was provided via LocalNavigationEventDispatcherOwner and no OnBackPressedDispatcherOwner was provided via LocalOnBackPressedDispatcherOwner. Please provide one of the two.".toString());
            }
            ComposerKt.sourceInformationMarkerStart($composer2, 1512752162, "CC(remember):PredictiveBackHandler.kt#9igjgp");
            boolean invalid$iv2 = $composer2.changed(owner);
            Object it$iv2 = $composer2.rememberedValue();
            if (invalid$iv2 || it$iv2 == Composer.INSTANCE.getEmpty()) {
                i2 = 0;
                NavigationEventDispatcherOwner navigationEventDispatcherOwner = owner instanceof NavigationEventDispatcherOwner ? (NavigationEventDispatcherOwner) owner : null;
                NavigationEventDispatcher navigationEventDispatcher = navigationEventDispatcherOwner != null ? navigationEventDispatcherOwner.getNavigationEventDispatcher() : null;
                boolean invalid$iv3 = owner instanceof OnBackPressedDispatcherOwner;
                OnBackPressedDispatcherOwner onBackPressedDispatcherOwner = invalid$iv3 ? (OnBackPressedDispatcherOwner) owner : null;
                Object value$iv = new BackHandlerDispatcherCompat(navigationEventDispatcher, onBackPressedDispatcherOwner != null ? onBackPressedDispatcherOwner.getOnBackPressedDispatcher() : null);
                $composer2.updateRememberedValue(value$iv);
                it$iv2 = value$iv;
            } else {
                i2 = 0;
            }
            final BackHandlerDispatcherCompat dispatcher = (BackHandlerDispatcherCompat) it$iv2;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerStart($composer2, 773894976, "CC(rememberCoroutineScope)N(getContext)608@27648L68:Effects.kt#9igjgp");
            ComposerKt.sourceInformationMarkerStart($composer2, 683737348, "CC(remember):Effects.kt#9igjgp");
            Object value$iv$iv = $composer2.rememberedValue();
            if (value$iv$iv == Composer.INSTANCE.getEmpty()) {
                value$iv$iv = EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.INSTANCE, $composer2);
                $composer2.updateRememberedValue(value$iv$iv);
            }
            CoroutineScope scope = (CoroutineScope) value$iv$iv;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            long compositeKey = ComposablesKt.getCurrentCompositeKeyHashCode($composer2, i2);
            ComposerKt.sourceInformationMarkerStart($composer2, 1512769435, "CC(remember):PredictiveBackHandler.kt#9igjgp");
            boolean invalid$iv4 = $composer2.changed(dispatcher) | $composer2.changed(compositeKey);
            Object it$iv3 = $composer2.rememberedValue();
            if (invalid$iv4 || it$iv3 == Composer.INSTANCE.getEmpty()) {
                Object value$iv2 = new ComposePredictiveBackHandler(scope, new PredictiveBackHandlerInfo(owner, compositeKey));
                $composer2.updateRememberedValue(value$iv2);
                it$iv3 = value$iv2;
            }
            final ComposePredictiveBackHandler handler = (ComposePredictiveBackHandler) it$iv3;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            if (ActivityFlags.isOnBackPressedLifecycleOrderMaintained) {
                $composer2.startReplaceGroup(-348514256);
                ComposerKt.sourceInformation($composer2, "151@6907L34,151@6896L45,155@7167L117,155@7128L156,160@7332L114,160@7294L152");
                ComposerKt.sourceInformationMarkerStart($composer2, 1512781529, "CC(remember):PredictiveBackHandler.kt#9igjgp");
                boolean invalid$iv5 = $composer2.changedInstance(handler) | $composer2.changedInstance(function2);
                Object value$iv3 = $composer2.rememberedValue();
                if (invalid$iv5 || value$iv3 == Composer.INSTANCE.getEmpty()) {
                    value$iv3 = new Function0() { // from class: androidx.activity.compose.PredictiveBackHandlerKt$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return PredictiveBackHandlerKt.PredictiveBackHandler$lambda$2$0(handler, function2);
                        }
                    };
                    $composer2.updateRememberedValue(value$iv3);
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                EffectsKt.SideEffect((Function0) value$iv3, $composer2, 0);
                Boolean boolValueOf = Boolean.valueOf(enabled2);
                ComposerKt.sourceInformationMarkerStart($composer2, 1512789932, "CC(remember):PredictiveBackHandler.kt#9igjgp");
                boolean invalid$iv6 = $composer2.changedInstance(handler) | (($dirty2 & 14) == 4);
                Object value$iv4 = $composer2.rememberedValue();
                if (invalid$iv6) {
                    bool = boolValueOf;
                } else {
                    bool = boolValueOf;
                    if (value$iv4 == Composer.INSTANCE.getEmpty()) {
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    LifecycleEffectKt.LifecycleStartEffect(bool, handler, null, (Function1) value$iv4, $composer2, $dirty2 & 14, 4);
                    ComposerKt.sourceInformationMarkerStart($composer2, 1512795209, "CC(remember):PredictiveBackHandler.kt#9igjgp");
                    invalid$iv = $composer2.changedInstance(dispatcher) | $composer2.changedInstance(handler);
                    it$iv = $composer2.rememberedValue();
                    if (!invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                        Object value$iv5 = new Function1() { // from class: androidx.activity.compose.PredictiveBackHandlerKt$$ExternalSyntheticLambda2
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                return PredictiveBackHandlerKt.PredictiveBackHandler$lambda$4$0(dispatcher, handler, (DisposableEffectScope) obj);
                            }
                        };
                        $composer2.updateRememberedValue(value$iv5);
                        it$iv = value$iv5;
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    EffectsKt.DisposableEffect(dispatcher, handler, (Function1) it$iv, $composer2, 0);
                    $composer2.endReplaceGroup();
                }
                value$iv4 = new Function1() { // from class: androidx.activity.compose.PredictiveBackHandlerKt$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PredictiveBackHandlerKt.PredictiveBackHandler$lambda$3$0(handler, enabled2, (LifecycleStartStopEffectScope) obj);
                    }
                };
                $composer2.updateRememberedValue(value$iv4);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                LifecycleEffectKt.LifecycleStartEffect(bool, handler, null, (Function1) value$iv4, $composer2, $dirty2 & 14, 4);
                ComposerKt.sourceInformationMarkerStart($composer2, 1512795209, "CC(remember):PredictiveBackHandler.kt#9igjgp");
                invalid$iv = $composer2.changedInstance(dispatcher) | $composer2.changedInstance(handler);
                it$iv = $composer2.rememberedValue();
                if (!invalid$iv) {
                    Object value$iv52 = new Function1() { // from class: androidx.activity.compose.PredictiveBackHandlerKt$$ExternalSyntheticLambda2
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return PredictiveBackHandlerKt.PredictiveBackHandler$lambda$4$0(dispatcher, handler, (DisposableEffectScope) obj);
                        }
                    };
                    $composer2.updateRememberedValue(value$iv52);
                    it$iv = value$iv52;
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    EffectsKt.DisposableEffect(dispatcher, handler, (Function1) it$iv, $composer2, 0);
                    $composer2.endReplaceGroup();
                }
            } else {
                $composer2.startReplaceGroup(-347849492);
                ComposerKt.sourceInformation($composer2, "166@7580L98,166@7569L109,173@7907L120,173@7865L162");
                ComposerKt.sourceInformationMarkerStart($composer2, 1512803129, "CC(remember):PredictiveBackHandler.kt#9igjgp");
                boolean invalid$iv7 = $composer2.changedInstance(handler) | (($dirty2 & 14) == 4) | $composer2.changedInstance(function2);
                Object it$iv4 = $composer2.rememberedValue();
                if (invalid$iv7 || it$iv4 == Composer.INSTANCE.getEmpty()) {
                    Object value$iv6 = new Function0() { // from class: androidx.activity.compose.PredictiveBackHandlerKt$$ExternalSyntheticLambda3
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return PredictiveBackHandlerKt.PredictiveBackHandler$lambda$5$0(handler, enabled2, function2);
                        }
                    };
                    $composer2.updateRememberedValue(value$iv6);
                    it$iv4 = value$iv6;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                EffectsKt.SideEffect((Function0) it$iv4, $composer2, 0);
                ComposerKt.sourceInformationMarkerStart($composer2, 1512813615, "CC(remember):PredictiveBackHandler.kt#9igjgp");
                boolean invalid$iv8 = $composer2.changedInstance(dispatcher) | $composer2.changedInstance(handler);
                Object it$iv5 = $composer2.rememberedValue();
                if (invalid$iv8 || it$iv5 == Composer.INSTANCE.getEmpty()) {
                    Object value$iv7 = new Function1() { // from class: androidx.activity.compose.PredictiveBackHandlerKt$$ExternalSyntheticLambda4
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return PredictiveBackHandlerKt.PredictiveBackHandler$lambda$6$0(dispatcher, handler, (LifecycleStartStopEffectScope) obj);
                        }
                    };
                    $composer2.updateRememberedValue(value$iv7);
                    it$iv5 = value$iv7;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                LifecycleEffectKt.LifecycleStartEffect(dispatcher, handler, null, (Function1) it$iv5, $composer2, 0, 4);
                $composer2.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2.skipToGroupEnd();
            enabled2 = z;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.activity.compose.PredictiveBackHandlerKt$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return PredictiveBackHandlerKt.PredictiveBackHandler$lambda$7(enabled2, function2, $changed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit PredictiveBackHandler$lambda$2$0(ComposePredictiveBackHandler $handler, Function2 $onBack) {
        $handler.setCurrentOnBack($onBack);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LifecycleStopOrDisposeEffectResult PredictiveBackHandler$lambda$3$0(final ComposePredictiveBackHandler $handler, boolean $enabled, final LifecycleStartStopEffectScope $this$LifecycleStartEffect) {
        $handler.setBackEnabled($enabled);
        return new LifecycleStopOrDisposeEffectResult() { // from class: androidx.activity.compose.PredictiveBackHandlerKt$PredictiveBackHandler$lambda$3$0$$inlined$onStopOrDispose$1
            @Override // androidx.lifecycle.compose.LifecycleStopOrDisposeEffectResult
            public void runStopOrDisposeEffect() {
                LifecycleStartStopEffectScope lifecycleStartStopEffectScope = $this$LifecycleStartEffect;
                $handler.setBackEnabled(false);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DisposableEffectResult PredictiveBackHandler$lambda$4$0(final BackHandlerDispatcherCompat $dispatcher, final ComposePredictiveBackHandler $handler, DisposableEffectScope $this$DisposableEffect) {
        $dispatcher.addHandler($handler);
        return new DisposableEffectResult() { // from class: androidx.activity.compose.PredictiveBackHandlerKt$PredictiveBackHandler$lambda$4$0$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void dispose() throws Exception {
                $dispatcher.removeHandler($handler);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit PredictiveBackHandler$lambda$5$0(ComposePredictiveBackHandler $handler, boolean $enabled, Function2 $onBack) {
        $handler.setBackEnabled($enabled);
        $handler.setCurrentOnBack($onBack);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LifecycleStopOrDisposeEffectResult PredictiveBackHandler$lambda$6$0(final BackHandlerDispatcherCompat $dispatcher, final ComposePredictiveBackHandler $handler, final LifecycleStartStopEffectScope $this$LifecycleStartEffect) {
        $dispatcher.addHandler($handler);
        return new LifecycleStopOrDisposeEffectResult() { // from class: androidx.activity.compose.PredictiveBackHandlerKt$PredictiveBackHandler$lambda$6$0$$inlined$onStopOrDispose$1
            @Override // androidx.lifecycle.compose.LifecycleStopOrDisposeEffectResult
            public void runStopOrDisposeEffect() throws Exception {
                LifecycleStartStopEffectScope lifecycleStartStopEffectScope = $this$LifecycleStartEffect;
                $dispatcher.removeHandler($handler);
            }
        };
    }
}
