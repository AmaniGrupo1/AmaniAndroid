package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView;

import androidx.compose.foundation.layout.RowScope;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.CalendarMonthKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
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
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CitasScreen.kt */
/* JADX INFO: loaded from: classes15.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
public final class ComposableSingletons$CitasScreenKt {
    public static final ComposableSingletons$CitasScreenKt INSTANCE = new ComposableSingletons$CitasScreenKt();

    /* JADX INFO: renamed from: lambda$-1743683450, reason: not valid java name */
    private static Function2<Composer, Integer, Unit> f203lambda$1743683450 = ComposableLambdaKt.composableLambdaInstance(-1743683450, false, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.ComposableSingletons$CitasScreenKt$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ComposableSingletons$CitasScreenKt.lambda__1743683450$lambda$0((Composer) obj, ((Integer) obj2).intValue());
        }
    });

    /* JADX INFO: renamed from: lambda$-1991467808, reason: not valid java name */
    private static Function3<RowScope, Composer, Integer, Unit> f204lambda$1991467808 = ComposableLambdaKt.composableLambdaInstance(-1991467808, false, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.ComposableSingletons$CitasScreenKt$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(Object obj, Object obj2, Object obj3) {
            return ComposableSingletons$CitasScreenKt.lambda__1991467808$lambda$1((RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
        }
    });
    private static Function3<RowScope, Composer, Integer, Unit> lambda$1911837233 = ComposableLambdaKt.composableLambdaInstance(1911837233, false, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.ComposableSingletons$CitasScreenKt$$ExternalSyntheticLambda2
        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(Object obj, Object obj2, Object obj3) {
            return ComposableSingletons$CitasScreenKt.lambda_1911837233$lambda$2((RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
        }
    });

    /* JADX INFO: renamed from: lambda$-258929188, reason: not valid java name */
    private static Function2<Composer, Integer, Unit> f205lambda$258929188 = ComposableLambdaKt.composableLambdaInstance(-258929188, false, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.ComposableSingletons$CitasScreenKt$$ExternalSyntheticLambda3
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ComposableSingletons$CitasScreenKt.lambda__258929188$lambda$3((Composer) obj, ((Integer) obj2).intValue());
        }
    });

    /* JADX INFO: renamed from: getLambda$-1743683450$app, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m10439getLambda$1743683450$app() {
        return f203lambda$1743683450;
    }

    /* JADX INFO: renamed from: getLambda$-1991467808$app, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m10440getLambda$1991467808$app() {
        return f204lambda$1991467808;
    }

    /* JADX INFO: renamed from: getLambda$-258929188$app, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m10441getLambda$258929188$app() {
        return f205lambda$258929188;
    }

    public final Function3<RowScope, Composer, Integer, Unit> getLambda$1911837233$app() {
        return lambda$1911837233;
    }

    static final Unit lambda__1743683450$lambda$0(Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C342@15430L77:CitasScreen.kt#yd4c32");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1743683450, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.ComposableSingletons$CitasScreenKt.lambda$-1743683450.<anonymous> (CitasScreen.kt:342)");
            }
            IconKt.m2433Iconww6aTOc(CalendarMonthKt.getCalendarMonth(Icons.INSTANCE.getDefault()), "Añadir a calendario", (Modifier) null, 0L, $composer, 48, 12);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit lambda__258929188$lambda$3(Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C491@23069L36:CitasScreen.kt#yd4c32");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-258929188, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.ComposableSingletons$CitasScreenKt.lambda$-258929188.<anonymous> (CitasScreen.kt:491)");
            }
            TextKt.m2976Text4IGK_g("Motivo de la cita (opcional)", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit lambda__1991467808$lambda$1(RowScope Button, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(Button, "$this$Button");
        ComposerKt.sourceInformation($composer, "C543@25652L22:CitasScreen.kt#yd4c32");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1991467808, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.ComposableSingletons$CitasScreenKt.lambda$-1991467808.<anonymous> (CitasScreen.kt:543)");
            }
            TextKt.m2976Text4IGK_g("Confirmar cita", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit lambda_1911837233$lambda$2(RowScope TextButton, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(TextButton, "$this$TextButton");
        ComposerKt.sourceInformation($composer, "C548@25831L16:CitasScreen.kt#yd4c32");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1911837233, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.ComposableSingletons$CitasScreenKt.lambda$1911837233.<anonymous> (CitasScreen.kt:548)");
            }
            TextKt.m2976Text4IGK_g("Cancelar", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }
}
