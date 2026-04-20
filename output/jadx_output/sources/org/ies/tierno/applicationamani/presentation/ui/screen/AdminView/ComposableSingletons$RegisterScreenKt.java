package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView;

import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.automirrored.filled.ArrowBackKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: RegisterScreen.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
public final class ComposableSingletons$RegisterScreenKt {
    public static final ComposableSingletons$RegisterScreenKt INSTANCE = new ComposableSingletons$RegisterScreenKt();
    private static Function2<Composer, Integer, Unit> lambda$1498402617 = ComposableLambdaKt.composableLambdaInstance(1498402617, false, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ComposableSingletons$RegisterScreenKt$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ComposableSingletons$RegisterScreenKt.lambda_1498402617$lambda$0((Composer) obj, ((Integer) obj2).intValue());
        }
    });

    /* JADX INFO: renamed from: lambda$-467439238, reason: not valid java name */
    private static Function2<Composer, Integer, Unit> f190lambda$467439238 = ComposableLambdaKt.composableLambdaInstance(-467439238, false, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ComposableSingletons$RegisterScreenKt$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ComposableSingletons$RegisterScreenKt.lambda__467439238$lambda$1((Composer) obj, ((Integer) obj2).intValue());
        }
    });

    /* JADX INFO: renamed from: getLambda$-467439238$app, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m10420getLambda$467439238$app() {
        return f190lambda$467439238;
    }

    public final Function2<Composer, Integer, Unit> getLambda$1498402617$app() {
        return lambda$1498402617;
    }

    static final Unit lambda_1498402617$lambda$0(Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C90@4597L47:RegisterScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1498402617, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ComposableSingletons$RegisterScreenKt.lambda$1498402617.<anonymous> (RegisterScreen.kt:90)");
            }
            TextKt.m2976Text4IGK_g("Registrar Paciente", (Modifier) null, Color.INSTANCE.m4734getWhite0d7_KjU(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 390, 0, 131066);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit lambda__467439238$lambda$1(Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C94@4873L202:RegisterScreen.kt#6w2cjo");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-467439238, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ComposableSingletons$RegisterScreenKt.lambda$-467439238.<anonymous> (RegisterScreen.kt:94)");
            }
            IconKt.m2433Iconww6aTOc(ArrowBackKt.getArrowBack(Icons.AutoMirrored.Filled.INSTANCE), "Volver", (Modifier) null, Color.INSTANCE.m4734getWhite0d7_KjU(), $composer, 3120, 4);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }
}
