package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView;

import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.PersonKt;
import androidx.compose.material3.IconKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: ListadoPsicologosScreen.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
public final class ComposableSingletons$ListadoPsicologosScreenKt {
    public static final ComposableSingletons$ListadoPsicologosScreenKt INSTANCE = new ComposableSingletons$ListadoPsicologosScreenKt();

    /* JADX INFO: renamed from: lambda$-1826493045, reason: not valid java name */
    private static Function2<Composer, Integer, Unit> f189lambda$1826493045 = ComposableLambdaKt.composableLambdaInstance(-1826493045, false, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ComposableSingletons$ListadoPsicologosScreenKt$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ComposableSingletons$ListadoPsicologosScreenKt.lambda__1826493045$lambda$0((Composer) obj, ((Integer) obj2).intValue());
        }
    });

    /* JADX INFO: renamed from: getLambda$-1826493045$app, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m10419getLambda$1826493045$app() {
        return f189lambda$1826493045;
    }

    static final Unit lambda__1826493045$lambda$0(Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C84@3706L80:ListadoPsicologosScreen.kt#6w2cjo");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1826493045, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ComposableSingletons$ListadoPsicologosScreenKt.lambda$-1826493045.<anonymous> (ListadoPsicologosScreen.kt:84)");
            }
            IconKt.m2433Iconww6aTOc(PersonKt.getPerson(Icons.INSTANCE.getDefault()), "Psicólogo", (Modifier) null, Color.INSTANCE.m4734getWhite0d7_KjU(), $composer, 3120, 4);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }
}
