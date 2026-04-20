package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView;

import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.automirrored.filled.ArrowBackKt;
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
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ViewPacientePrincipalScreen.kt */
/* JADX INFO: loaded from: classes15.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
public final class ComposableSingletons$ViewPacientePrincipalScreenKt {
    public static final ComposableSingletons$ViewPacientePrincipalScreenKt INSTANCE = new ComposableSingletons$ViewPacientePrincipalScreenKt();

    /* JADX INFO: renamed from: lambda$-307399362, reason: not valid java name */
    private static Function2<Composer, Integer, Unit> f208lambda$307399362 = ComposableLambdaKt.composableLambdaInstance(-307399362, false, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.ComposableSingletons$ViewPacientePrincipalScreenKt$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ComposableSingletons$ViewPacientePrincipalScreenKt.lambda__307399362$lambda$0((Composer) obj, ((Integer) obj2).intValue());
        }
    });

    /* JADX INFO: renamed from: lambda$-1814075073, reason: not valid java name */
    private static Function2<Composer, Integer, Unit> f207lambda$1814075073 = ComposableLambdaKt.composableLambdaInstance(-1814075073, false, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.ComposableSingletons$ViewPacientePrincipalScreenKt$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ComposableSingletons$ViewPacientePrincipalScreenKt.lambda__1814075073$lambda$1((Composer) obj, ((Integer) obj2).intValue());
        }
    });
    private static Function3<RowScope, Composer, Integer, Unit> lambda$64285216 = ComposableLambdaKt.composableLambdaInstance(64285216, false, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.ComposableSingletons$ViewPacientePrincipalScreenKt$$ExternalSyntheticLambda2
        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(Object obj, Object obj2, Object obj3) {
            return ComposableSingletons$ViewPacientePrincipalScreenKt.lambda_64285216$lambda$2((RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
        }
    });
    private static Function3<RowScope, Composer, Integer, Unit> lambda$82683904 = ComposableLambdaKt.composableLambdaInstance(82683904, false, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.ComposableSingletons$ViewPacientePrincipalScreenKt$$ExternalSyntheticLambda3
        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(Object obj, Object obj2, Object obj3) {
            return ComposableSingletons$ViewPacientePrincipalScreenKt.lambda_82683904$lambda$3((RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
        }
    });

    /* JADX INFO: renamed from: lambda$-1278275617, reason: not valid java name */
    private static Function3<RowScope, Composer, Integer, Unit> f206lambda$1278275617 = ComposableLambdaKt.composableLambdaInstance(-1278275617, false, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.ComposableSingletons$ViewPacientePrincipalScreenKt$$ExternalSyntheticLambda4
        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(Object obj, Object obj2, Object obj3) {
            return ComposableSingletons$ViewPacientePrincipalScreenKt.lambda__1278275617$lambda$4((RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
        }
    });

    /* JADX INFO: renamed from: getLambda$-1278275617$app, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m10442getLambda$1278275617$app() {
        return f206lambda$1278275617;
    }

    /* JADX INFO: renamed from: getLambda$-1814075073$app, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m10443getLambda$1814075073$app() {
        return f207lambda$1814075073;
    }

    /* JADX INFO: renamed from: getLambda$-307399362$app, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m10444getLambda$307399362$app() {
        return f208lambda$307399362;
    }

    public final Function3<RowScope, Composer, Integer, Unit> getLambda$64285216$app() {
        return lambda$64285216;
    }

    public final Function3<RowScope, Composer, Integer, Unit> getLambda$82683904$app() {
        return lambda$82683904;
    }

    static final Unit lambda__307399362$lambda$0(Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C79@3412L50:ViewPacientePrincipalScreen.kt#yd4c32");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-307399362, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.ComposableSingletons$ViewPacientePrincipalScreenKt.lambda$-307399362.<anonymous> (ViewPacientePrincipalScreen.kt:79)");
            }
            TextKt.m2976Text4IGK_g("Mi Psicólogo", (Modifier) null, 0L, 0L, (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 196614, 0, 131038);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit lambda__1814075073$lambda$1(Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C82@3600L72:ViewPacientePrincipalScreen.kt#yd4c32");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1814075073, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.ComposableSingletons$ViewPacientePrincipalScreenKt.lambda$-1814075073.<anonymous> (ViewPacientePrincipalScreen.kt:82)");
            }
            IconKt.m2433Iconww6aTOc(ArrowBackKt.getArrowBack(Icons.AutoMirrored.Filled.INSTANCE), "Volver", (Modifier) null, 0L, $composer, 48, 12);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit lambda_64285216$lambda$2(RowScope Button, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(Button, "$this$Button");
        ComposerKt.sourceInformation($composer, "C129@5651L18:ViewPacientePrincipalScreen.kt#yd4c32");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(64285216, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.ComposableSingletons$ViewPacientePrincipalScreenKt.lambda$64285216.<anonymous> (ViewPacientePrincipalScreen.kt:129)");
            }
            TextKt.m2976Text4IGK_g("Reintentar", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit lambda_82683904$lambda$3(RowScope Button, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(Button, "$this$Button");
        ComposerKt.sourceInformation($composer, "C165@7451L14:ViewPacientePrincipalScreen.kt#yd4c32");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(82683904, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.ComposableSingletons$ViewPacientePrincipalScreenKt.lambda$82683904.<anonymous> (ViewPacientePrincipalScreen.kt:165)");
            }
            TextKt.m2976Text4IGK_g("Volver", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit lambda__1278275617$lambda$4(RowScope Button, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(Button, "$this$Button");
        ComposerKt.sourceInformation($composer, "C419@17216L63,420@17292L39,421@17344L21:ViewPacientePrincipalScreen.kt#yd4c32");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1278275617, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.ComposableSingletons$ViewPacientePrincipalScreenKt.lambda$-1278275617.<anonymous> (ViewPacientePrincipalScreen.kt:419)");
            }
            IconKt.m2433Iconww6aTOc(CalendarMonthKt.getCalendarMonth(Icons.INSTANCE.getDefault()), "Citas", (Modifier) null, 0L, $composer, 48, 12);
            SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), $composer, 6);
            TextKt.m2976Text4IGK_g("Ver mis citas", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }
}
