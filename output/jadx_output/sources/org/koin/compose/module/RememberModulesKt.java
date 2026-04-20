package org.koin.compose.module;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.FunctionKeyMeta;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import org.koin.compose.KoinApplicationKt;
import org.koin.core.Koin;
import org.koin.core.annotation.KoinExperimentalAPI;
import org.koin.core.module.Module;

/* JADX INFO: compiled from: RememberModules.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aN\u0010\u0000\u001a\u00020\u00012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\u0019\b\u0006\u0010\u0006\u001a\u0013\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0007¢\u0006\u0002\b\nH\u0087\bø\u0001\u0000¢\u0006\u0002\u0010\u000b\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\f"}, d2 = {"rememberKoinModules", "", "unloadOnForgotten", "", "unloadOnAbandoned", "unloadModules", "modules", "Lkotlin/Function0;", "", "Lorg/koin/core/module/Module;", "Landroidx/compose/runtime/DisallowComposableCalls;", "(Ljava/lang/Boolean;Ljava/lang/Boolean;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V", "koin-compose_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class RememberModulesKt {
    @FunctionKeyMeta(endOffset = 1802, key = -1703546888, startOffset = 1397)
    @KoinExperimentalAPI
    public static final void rememberKoinModules(Boolean unloadOnForgotten, Boolean unloadOnAbandoned, boolean unloadModules, Function0<? extends List<Module>> function0, Composer $composer, int $changed, int i) {
        Boolean unloadOnForgotten2;
        Boolean unloadOnAbandoned2;
        boolean unloadModules2;
        AnonymousClass1 anonymousClass1;
        ComposerKt.sourceInformationMarkerStart($composer, -1703546888, "CC(rememberKoinModules)N(unloadOnForgotten,unloadOnAbandoned,unloadModules,modules)43@1647L9,44@1661L139:RememberModules.kt#48p8hv");
        if ((i & 1) != 0) {
            unloadOnForgotten2 = null;
        } else {
            unloadOnForgotten2 = unloadOnForgotten;
        }
        if ((i & 2) == 0) {
            unloadOnAbandoned2 = unloadOnAbandoned;
        } else {
            unloadOnAbandoned2 = null;
        }
        if ((i & 4) == 0) {
            unloadModules2 = unloadModules;
        } else {
            unloadModules2 = false;
        }
        if ((i & 8) == 0) {
            anonymousClass1 = function0;
        } else {
            anonymousClass1 = new Function0<List<? extends Module>>() { // from class: org.koin.compose.module.RememberModulesKt.rememberKoinModules.1
                @Override // kotlin.jvm.functions.Function0
                public final List<? extends Module> invoke() {
                    return CollectionsKt.emptyList();
                }
            };
        }
        Koin koin = KoinApplicationKt.getKoin($composer, 0);
        ComposerKt.sourceInformationMarkerStart($composer, -726011005, "CC(remember):RememberModules.kt#9igjgp");
        Object it$iv = $composer.rememberedValue();
        if (it$iv == Composer.INSTANCE.getEmpty()) {
            Object value$iv = new CompositionKoinModuleLoader(anonymousClass1.invoke(), koin, unloadOnForgotten2 != null ? unloadOnForgotten2.booleanValue() : unloadModules2, unloadOnAbandoned2 != null ? unloadOnAbandoned2.booleanValue() : unloadModules2);
            $composer.updateRememberedValue(value$iv);
            it$iv = value$iv;
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        ComposerKt.sourceInformationMarkerEnd($composer);
    }
}
