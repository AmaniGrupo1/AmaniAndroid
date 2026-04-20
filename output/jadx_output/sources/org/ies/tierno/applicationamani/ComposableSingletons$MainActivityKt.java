package org.ies.tierno.applicationamani;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.navigation.NavHostController;
import androidx.navigation.Navigator;
import androidx.navigation.compose.NavHostControllerKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraphKt;
import org.ies.tierno.applicationamani.ui.theme.ThemeKt;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: classes16.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
public final class ComposableSingletons$MainActivityKt {
    public static final ComposableSingletons$MainActivityKt INSTANCE = new ComposableSingletons$MainActivityKt();

    /* JADX INFO: renamed from: lambda$-1420752143, reason: not valid java name */
    private static Function2<Composer, Integer, Unit> f168lambda$1420752143 = ComposableLambdaKt.composableLambdaInstance(-1420752143, false, new Function2() { // from class: org.ies.tierno.applicationamani.ComposableSingletons$MainActivityKt$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ComposableSingletons$MainActivityKt.lambda__1420752143$lambda$0((Composer) obj, ((Integer) obj2).intValue());
        }
    });
    private static Function2<Composer, Integer, Unit> lambda$50763118 = ComposableLambdaKt.composableLambdaInstance(50763118, false, new Function2() { // from class: org.ies.tierno.applicationamani.ComposableSingletons$MainActivityKt$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ComposableSingletons$MainActivityKt.lambda_50763118$lambda$1((Composer) obj, ((Integer) obj2).intValue());
        }
    });

    /* JADX INFO: renamed from: getLambda$-1420752143$app, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m10326getLambda$1420752143$app() {
        return f168lambda$1420752143;
    }

    public final Function2<Composer, Integer, Unit> getLambda$50763118$app() {
        return lambda$50763118;
    }

    static final Unit lambda_50763118$lambda$1(Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C36@1364L153:MainActivity.kt#cb6rl6");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(50763118, $changed, -1, "org.ies.tierno.applicationamani.ComposableSingletons$MainActivityKt.lambda$50763118.<anonymous> (MainActivity.kt:36)");
            }
            ThemeKt.ApplicationAmaniTheme(false, f168lambda$1420752143, $composer, 48, 1);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit lambda__1420752143$lambda$0(Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C37@1424L23,38@1464L39:MainActivity.kt#cb6rl6");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1420752143, $changed, -1, "org.ies.tierno.applicationamani.ComposableSingletons$MainActivityKt.lambda$-1420752143.<anonymous> (MainActivity.kt:37)");
            }
            NavHostController navController = NavHostControllerKt.rememberNavController(new Navigator[0], $composer, 0);
            NavGraphKt.NavGraph(navController, null, $composer, 0, 2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }
}
