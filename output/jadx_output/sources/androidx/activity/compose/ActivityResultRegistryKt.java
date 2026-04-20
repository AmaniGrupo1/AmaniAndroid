package androidx.activity.compose;

import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: ActivityResultRegistry.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u001aM\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u00020\b0\u0007H\u0007¢\u0006\u0002\u0010\t¨\u0006\n"}, d2 = {"rememberLauncherForActivityResult", "Landroidx/activity/compose/ManagedActivityResultLauncher;", "I", "O", "contract", "Landroidx/activity/result/contract/ActivityResultContract;", "onResult", "Lkotlin/Function1;", "", "(Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/activity/compose/ManagedActivityResultLauncher;", "activity-compose"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class ActivityResultRegistryKt {
    public static final <I, O> ManagedActivityResultLauncher<I, O> rememberLauncherForActivityResult(final ActivityResultContract<I, O> activityResultContract, Function1<? super O, Unit> function1, Composer $composer, int $changed) {
        final ActivityResultRegistry activityResultRegistry;
        ComposerKt.sourceInformationMarkerStart($composer, -1408504823, "C(rememberLauncherForActivityResult)N(contract,onResult)84@3542L30,85@3599L30,89@3785L32,89@3768L49,92@3906L7,96@4089L46,97@4163L73,101@4419L176,101@4363L232:ActivityResultRegistry.kt#q1dkbc");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1408504823, $changed, -1, "androidx.activity.compose.rememberLauncherForActivityResult (ActivityResultRegistry.kt:82)");
        }
        State currentContract = SnapshotStateKt.rememberUpdatedState(activityResultContract, $composer, $changed & 14);
        final State currentOnResult = SnapshotStateKt.rememberUpdatedState(function1, $composer, ($changed >> 3) & 14);
        Object[] objArr = new Object[0];
        ComposerKt.sourceInformationMarkerStart($composer, -658420919, "CC(remember):ActivityResultRegistry.kt#9igjgp");
        Object it$iv = $composer.rememberedValue();
        if (it$iv == Composer.INSTANCE.getEmpty()) {
            Object value$iv = new Function0() { // from class: androidx.activity.compose.ActivityResultRegistryKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ActivityResultRegistryKt.rememberLauncherForActivityResult$lambda$0$0();
                }
            };
            $composer.updateRememberedValue(value$iv);
            it$iv = value$iv;
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        final String key = (String) RememberSaveableKt.rememberSaveable(objArr, (Function0) it$iv, $composer, 48);
        ActivityResultRegistryOwner current = LocalActivityResultRegistryOwner.INSTANCE.getCurrent($composer, 6);
        if (current == null) {
            throw new IllegalStateException("No ActivityResultRegistryOwner was provided via LocalActivityResultRegistryOwner".toString());
        }
        ActivityResultRegistry activityResultRegistry2 = current.getActivityResultRegistry();
        ComposerKt.sourceInformationMarkerStart($composer, -658411177, "CC(remember):ActivityResultRegistry.kt#9igjgp");
        Object it$iv2 = $composer.rememberedValue();
        if (it$iv2 == Composer.INSTANCE.getEmpty()) {
            Object value$iv2 = new ActivityResultLauncherHolder();
            $composer.updateRememberedValue(value$iv2);
            it$iv2 = value$iv2;
        }
        final ActivityResultLauncherHolder realLauncher = (ActivityResultLauncherHolder) it$iv2;
        ComposerKt.sourceInformationMarkerEnd($composer);
        ComposerKt.sourceInformationMarkerStart($composer, -658408782, "CC(remember):ActivityResultRegistry.kt#9igjgp");
        Object it$iv3 = $composer.rememberedValue();
        if (it$iv3 == Composer.INSTANCE.getEmpty()) {
            Object value$iv3 = new ManagedActivityResultLauncher(realLauncher, currentContract);
            $composer.updateRememberedValue(value$iv3);
            it$iv3 = value$iv3;
        }
        ManagedActivityResultLauncher<I, O> managedActivityResultLauncher = (ManagedActivityResultLauncher) it$iv3;
        ComposerKt.sourceInformationMarkerEnd($composer);
        ComposerKt.sourceInformationMarkerStart($composer, -658400487, "CC(remember):ActivityResultRegistry.kt#9igjgp");
        boolean invalid$iv = $composer.changed(currentOnResult) | $composer.changedInstance(realLauncher) | $composer.changedInstance(activityResultRegistry2) | $composer.changed(key) | $composer.changedInstance(activityResultContract);
        Object it$iv4 = $composer.rememberedValue();
        if (invalid$iv || it$iv4 == Composer.INSTANCE.getEmpty()) {
            activityResultRegistry = activityResultRegistry2;
            Object value$iv4 = new Function1() { // from class: androidx.activity.compose.ActivityResultRegistryKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return ActivityResultRegistryKt.rememberLauncherForActivityResult$lambda$4$0(realLauncher, activityResultRegistry, key, activityResultContract, currentOnResult, (DisposableEffectScope) obj);
                }
            };
            key = key;
            $composer.updateRememberedValue(value$iv4);
            it$iv4 = value$iv4;
        } else {
            activityResultRegistry = activityResultRegistry2;
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        ActivityResultRegistry activityResultRegistry3 = activityResultRegistry;
        EffectsKt.DisposableEffect(activityResultRegistry3, key, activityResultContract, (Function1) it$iv4, $composer, ($changed << 6) & 896);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return managedActivityResultLauncher;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String rememberLauncherForActivityResult$lambda$0$0() {
        return UUID.randomUUID().toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DisposableEffectResult rememberLauncherForActivityResult$lambda$4$0(final ActivityResultLauncherHolder $realLauncher, ActivityResultRegistry $activityResultRegistry, String $key, ActivityResultContract $contract, final State $currentOnResult, DisposableEffectScope $this$DisposableEffect) {
        $realLauncher.setLauncher($activityResultRegistry.register($key, $contract, new ActivityResultCallback() { // from class: androidx.activity.compose.ActivityResultRegistryKt$$ExternalSyntheticLambda2
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                ActivityResultRegistryKt.rememberLauncherForActivityResult$lambda$4$0$0($currentOnResult, obj);
            }
        }));
        return new DisposableEffectResult() { // from class: androidx.activity.compose.ActivityResultRegistryKt$rememberLauncherForActivityResult$lambda$4$0$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void dispose() {
                $realLauncher.unregister();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void rememberLauncherForActivityResult$lambda$4$0$0(State $currentOnResult, Object it) {
        ((Function1) $currentOnResult.getValue()).invoke(it);
    }
}
