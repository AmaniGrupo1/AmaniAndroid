package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView;

import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.ChevronLeftKt;
import androidx.compose.material.icons.filled.ChevronRightKt;
import androidx.compose.material3.IconKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: CalendarioView.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
public final class ComposableSingletons$CalendarioViewKt {
    public static final ComposableSingletons$CalendarioViewKt INSTANCE = new ComposableSingletons$CalendarioViewKt();
    private static Function2<Composer, Integer, Unit> lambda$30391740 = ComposableLambdaKt.composableLambdaInstance(30391740, false, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ComposableSingletons$CalendarioViewKt$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ComposableSingletons$CalendarioViewKt.lambda_30391740$lambda$0((Composer) obj, ((Integer) obj2).intValue());
        }
    });
    private static Function2<Composer, Integer, Unit> lambda$1337667635 = ComposableLambdaKt.composableLambdaInstance(1337667635, false, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ComposableSingletons$CalendarioViewKt$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ComposableSingletons$CalendarioViewKt.lambda_1337667635$lambda$1((Composer) obj, ((Integer) obj2).intValue());
        }
    });

    public final Function2<Composer, Integer, Unit> getLambda$1337667635$app() {
        return lambda$1337667635;
    }

    public final Function2<Composer, Integer, Unit> getLambda$30391740$app() {
        return lambda$30391740;
    }

    static final Unit lambda_30391740$lambda$0(Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C99@3759L68:CalendarioView.kt#6w2cjo");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(30391740, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ComposableSingletons$CalendarioViewKt.lambda$30391740.<anonymous> (CalendarioView.kt:99)");
            }
            IconKt.m2433Iconww6aTOc(ChevronLeftKt.getChevronLeft(Icons.INSTANCE.getDefault()), "Mes anterior", (Modifier) null, 0L, $composer, 48, 12);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit lambda_1337667635$lambda$1(Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C107@4108L70:CalendarioView.kt#6w2cjo");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1337667635, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ComposableSingletons$CalendarioViewKt.lambda$1337667635.<anonymous> (CalendarioView.kt:107)");
            }
            IconKt.m2433Iconww6aTOc(ChevronRightKt.getChevronRight(Icons.INSTANCE.getDefault()), "Mes siguiente", (Modifier) null, 0L, $composer, 48, 12);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }
}
