package org.ies.tierno.applicationamani.presentation.navigation.navGraph;

import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.navigation.NavBackStackEntry;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CalendarioViewKt;

/* JADX INFO: compiled from: NavGraph.kt */
/* JADX INFO: loaded from: classes14.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
public final class ComposableSingletons$NavGraphKt {
    public static final ComposableSingletons$NavGraphKt INSTANCE = new ComposableSingletons$NavGraphKt();

    /* JADX INFO: renamed from: lambda$-1307778222, reason: not valid java name */
    private static Function4<AnimatedContentScope, NavBackStackEntry, Composer, Integer, Unit> f169lambda$1307778222 = ComposableLambdaKt.composableLambdaInstance(-1307778222, false, new Function4() { // from class: org.ies.tierno.applicationamani.presentation.navigation.navGraph.ComposableSingletons$NavGraphKt$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function4
        public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
            return ComposableSingletons$NavGraphKt.lambda__1307778222$lambda$0((AnimatedContentScope) obj, (NavBackStackEntry) obj2, (Composer) obj3, ((Integer) obj4).intValue());
        }
    });

    /* JADX INFO: renamed from: getLambda$-1307778222$app, reason: not valid java name */
    public final Function4<AnimatedContentScope, NavBackStackEntry, Composer, Integer, Unit> m10398getLambda$1307778222$app() {
        return f169lambda$1307778222;
    }

    static final Unit lambda__1307778222$lambda$0(AnimatedContentScope composable, NavBackStackEntry it, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(composable, "$this$composable");
        Intrinsics.checkNotNullParameter(it, "it");
        ComposerKt.sourceInformation($composer, "CN(it)145@7132L16:NavGraph.kt#cx1nnv");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1307778222, $changed, -1, "org.ies.tierno.applicationamani.presentation.navigation.navGraph.ComposableSingletons$NavGraphKt.lambda$-1307778222.<anonymous> (NavGraph.kt:145)");
        }
        CalendarioViewKt.CalendarioView(null, null, null, null, null, null, $composer, 0, 63);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return Unit.INSTANCE;
    }
}
