package org.koin.androidx.compose;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.koin.compose.KoinApplicationKt;

/* JADX INFO: compiled from: KoinAndroidContext.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a \u0010\u0000\u001a\u00020\u00012\u0011\u0010\u0002\u001a\r\u0012\u0004\u0012\u00020\u00010\u0003¢\u0006\u0002\b\u0004H\u0007¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, d2 = {"KoinAndroidContext", "", "content", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "koin-androidx-compose_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class KoinAndroidContextKt {
    static final Unit KoinAndroidContext$lambda$0(Function2 function2, int i, Composer composer, int i2) {
        KoinAndroidContext(function2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    @Deprecated(message = "KoinAndroidContext is not needed anymore. This can be removed. Compose Koin context is setup with StartKoin()")
    public static final void KoinAndroidContext(final Function2<? super Composer, ? super Integer, Unit> content, Composer $composer, final int $changed) {
        Intrinsics.checkNotNullParameter(content, "content");
        Composer $composer2 = $composer.startRestartGroup(-318078207);
        ComposerKt.sourceInformation($composer2, "C(KoinAndroidContext)N(content)44@1418L30:KoinAndroidContext.kt#m7on9k");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changedInstance(content) ? 4 : 2;
        }
        if (!$composer2.shouldExecute(($dirty & 3) != 2, $dirty & 1)) {
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-318078207, $dirty, -1, "org.koin.androidx.compose.KoinAndroidContext (KoinAndroidContext.kt:43)");
            }
            KoinApplicationKt.KoinContext(null, content, $composer2, ($dirty << 3) & 112, 1);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.koin.androidx.compose.KoinAndroidContextKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return KoinAndroidContextKt.KoinAndroidContext$lambda$0(content, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }
}
