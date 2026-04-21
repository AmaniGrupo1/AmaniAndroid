package androidx.navigationevent.compose;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.navigationevent.NavigationEventDispatcher;
import androidx.navigationevent.NavigationEventDispatcherOwner;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: RememberNavigationEventDispatcherOwner.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u001a#\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, d2 = {"rememberNavigationEventDispatcherOwner", "Landroidx/navigationevent/NavigationEventDispatcherOwner;", "enabled", "", "parent", "(ZLandroidx/navigationevent/NavigationEventDispatcherOwner;Landroidx/compose/runtime/Composer;II)Landroidx/navigationevent/NavigationEventDispatcherOwner;", "navigationevent-compose"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class RememberNavigationEventDispatcherOwnerKt {
    public static final NavigationEventDispatcherOwner rememberNavigationEventDispatcherOwner(boolean enabled, NavigationEventDispatcherOwner parent, Composer $composer, int $changed, int i) {
        Object value$iv;
        ComposerKt.sourceInformationMarkerStart($composer, -336636597, "C(rememberNavigationEventDispatcherOwner)N(enabled,parent)61@3115L7,67@3406L325,76@3761L39,76@3737L63,79@3907L43,79@3873L77,81@3963L124:RememberNavigationEventDispatcherOwner.kt#wc8b4r");
        if ((i & 1) != 0) {
            enabled = true;
        }
        if ((i & 2) != 0) {
            NavigationEventDispatcherOwner current = LocalNavigationEventDispatcherOwner.INSTANCE.getCurrent($composer, 6);
            if (current == null) {
                throw new IllegalStateException("No NavigationEventDispatcherOwner provided in LocalNavigationEventDispatcherOwner. If you intended to create a root dispatcher, explicitly pass null as the parent.".toString());
            }
            parent = current;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-336636597, $changed, -1, "androidx.navigationevent.compose.rememberNavigationEventDispatcherOwner (RememberNavigationEventDispatcherOwner.kt:65)");
        }
        ComposerKt.sourceInformationMarkerStart($composer, -1385206640, "CC(remember):RememberNavigationEventDispatcherOwner.kt#9igjgp");
        boolean invalid$iv = $composer.changed(parent);
        Object it$iv = $composer.rememberedValue();
        if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
            if (parent != null) {
                value$iv = new NavigationEventDispatcher(parent.getNavigationEventDispatcher());
            } else {
                value$iv = new NavigationEventDispatcher();
            }
            $composer.updateRememberedValue(value$iv);
            it$iv = value$iv;
        }
        final NavigationEventDispatcher localDispatcher = (NavigationEventDispatcher) it$iv;
        ComposerKt.sourceInformationMarkerEnd($composer);
        Boolean boolValueOf = Boolean.valueOf(enabled);
        ComposerKt.sourceInformationMarkerStart($composer, -1385195566, "CC(remember):RememberNavigationEventDispatcherOwner.kt#9igjgp");
        boolean invalid$iv2 = (((6 ^ ($changed & 14)) > 4 && $composer.changed(enabled)) || ($changed & 6) == 4) | $composer.changedInstance(localDispatcher);
        Object it$iv2 = $composer.rememberedValue();
        if (invalid$iv2 || it$iv2 == Composer.INSTANCE.getEmpty()) {
            Object value$iv2 = (Function2) new RememberNavigationEventDispatcherOwnerKt$rememberNavigationEventDispatcherOwner$2$1(localDispatcher, enabled, null);
            $composer.updateRememberedValue(value$iv2);
            it$iv2 = value$iv2;
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        EffectsKt.LaunchedEffect(boolValueOf, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) it$iv2, $composer, $changed & 14);
        ComposerKt.sourceInformationMarkerStart($composer, -1385190890, "CC(remember):RememberNavigationEventDispatcherOwner.kt#9igjgp");
        boolean invalid$iv3 = $composer.changedInstance(localDispatcher);
        Object it$iv3 = $composer.rememberedValue();
        if (invalid$iv3 || it$iv3 == Composer.INSTANCE.getEmpty()) {
            Object value$iv3 = new Function1() { // from class: androidx.navigationevent.compose.RememberNavigationEventDispatcherOwnerKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return RememberNavigationEventDispatcherOwnerKt.rememberNavigationEventDispatcherOwner$lambda$5$lambda$4(localDispatcher, (DisposableEffectScope) obj);
                }
            };
            $composer.updateRememberedValue(value$iv3);
            it$iv3 = value$iv3;
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        EffectsKt.DisposableEffect(localDispatcher, (Function1<? super DisposableEffectScope, ? extends DisposableEffectResult>) it$iv3, $composer, 0);
        ComposerKt.sourceInformationMarkerStart($composer, -1385189017, "CC(remember):RememberNavigationEventDispatcherOwner.kt#9igjgp");
        boolean invalid$iv4 = $composer.changed(localDispatcher);
        Object it$iv4 = $composer.rememberedValue();
        if (invalid$iv4 || it$iv4 == Composer.INSTANCE.getEmpty()) {
            Object value$iv4 = new ComposeNavigationEventDispatcherOwner(localDispatcher);
            $composer.updateRememberedValue(value$iv4);
            it$iv4 = value$iv4;
        }
        ComposeNavigationEventDispatcherOwner composeNavigationEventDispatcherOwner = (ComposeNavigationEventDispatcherOwner) it$iv4;
        ComposerKt.sourceInformationMarkerEnd($composer);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return composeNavigationEventDispatcherOwner;
    }

    static final DisposableEffectResult rememberNavigationEventDispatcherOwner$lambda$5$lambda$4(final NavigationEventDispatcher $localDispatcher, DisposableEffectScope $this$DisposableEffect) {
        return new DisposableEffectResult() { // from class: androidx.navigationevent.compose.RememberNavigationEventDispatcherOwnerKt$rememberNavigationEventDispatcherOwner$lambda$5$lambda$4$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void dispose() {
                $localDispatcher.dispose();
            }
        };
    }
}
