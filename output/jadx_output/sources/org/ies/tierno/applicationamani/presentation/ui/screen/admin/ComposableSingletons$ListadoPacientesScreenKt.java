package org.ies.tierno.applicationamani.presentation.ui.screen.admin;

import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.PersonAddKt;
import androidx.compose.material3.IconKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: ListadoPacientesScreen.kt */
/* JADX INFO: loaded from: classes12.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
public final class ComposableSingletons$ListadoPacientesScreenKt {
    public static final ComposableSingletons$ListadoPacientesScreenKt INSTANCE = new ComposableSingletons$ListadoPacientesScreenKt();

    /* JADX INFO: renamed from: lambda$-1316597478, reason: not valid java name */
    private static Function2<Composer, Integer, Unit> f195lambda$1316597478 = ComposableLambdaKt.composableLambdaInstance(-1316597478, false, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ComposableSingletons$ListadoPacientesScreenKt$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ComposableSingletons$ListadoPacientesScreenKt.lambda__1316597478$lambda$0((Composer) obj, ((Integer) obj2).intValue());
        }
    });

    /* JADX INFO: renamed from: getLambda$-1316597478$app, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m10425getLambda$1316597478$app() {
        return f195lambda$1316597478;
    }

    static final Unit lambda__1316597478$lambda$0(Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C110@4971L90:ListadoPacientesScreen.kt#t64v6f");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1316597478, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.admin.ComposableSingletons$ListadoPacientesScreenKt.lambda$-1316597478.<anonymous> (ListadoPacientesScreen.kt:110)");
            }
            IconKt.m2433Iconww6aTOc(PersonAddKt.getPersonAdd(Icons.INSTANCE.getDefault()), "Agregar paciente", (Modifier) null, Color.INSTANCE.m4734getWhite0d7_KjU(), $composer, 3120, 4);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }
}
