package org.ies.tierno.applicationamani.presentation.ui.screen.consentimiento;

import androidx.compose.foundation.layout.RowScope;
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
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OpcionPagoScreen.kt */
/* JADX INFO: loaded from: classes9.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
public final class ComposableSingletons$OpcionPagoScreenKt {
    public static final ComposableSingletons$OpcionPagoScreenKt INSTANCE = new ComposableSingletons$OpcionPagoScreenKt();

    /* JADX INFO: renamed from: lambda$-27240787, reason: not valid java name */
    private static Function3<RowScope, Composer, Integer, Unit> f199lambda$27240787 = ComposableLambdaKt.composableLambdaInstance(-27240787, false, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.consentimiento.ComposableSingletons$OpcionPagoScreenKt$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(Object obj, Object obj2, Object obj3) {
            return ComposableSingletons$OpcionPagoScreenKt.lambda__27240787$lambda$0((RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
        }
    });

    /* JADX INFO: renamed from: lambda$-960589084, reason: not valid java name */
    private static Function3<RowScope, Composer, Integer, Unit> f201lambda$960589084 = ComposableLambdaKt.composableLambdaInstance(-960589084, false, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.consentimiento.ComposableSingletons$OpcionPagoScreenKt$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(Object obj, Object obj2, Object obj3) {
            return ComposableSingletons$OpcionPagoScreenKt.lambda__960589084$lambda$1((RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
        }
    });

    /* JADX INFO: renamed from: lambda$-902606811, reason: not valid java name */
    private static Function3<RowScope, Composer, Integer, Unit> f200lambda$902606811 = ComposableLambdaKt.composableLambdaInstance(-902606811, false, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.consentimiento.ComposableSingletons$OpcionPagoScreenKt$$ExternalSyntheticLambda2
        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(Object obj, Object obj2, Object obj3) {
            return ComposableSingletons$OpcionPagoScreenKt.lambda__902606811$lambda$2((RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
        }
    });

    /* JADX INFO: renamed from: getLambda$-27240787$app, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m10435getLambda$27240787$app() {
        return f199lambda$27240787;
    }

    /* JADX INFO: renamed from: getLambda$-902606811$app, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m10436getLambda$902606811$app() {
        return f200lambda$902606811;
    }

    /* JADX INFO: renamed from: getLambda$-960589084$app, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m10437getLambda$960589084$app() {
        return f201lambda$960589084;
    }

    static final Unit lambda__27240787$lambda$0(RowScope Button, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(Button, "$this$Button");
        ComposerKt.sourceInformation($composer, "C48@1610L23:OpcionPagoScreen.kt#qemjsp");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-27240787, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.consentimiento.ComposableSingletons$OpcionPagoScreenKt.lambda$-27240787.<anonymous> (OpcionPagoScreen.kt:48)");
            }
            TextKt.m2976Text4IGK_g("Pago presencial", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit lambda__960589084$lambda$1(RowScope Button, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(Button, "$this$Button");
        ComposerKt.sourceInformation($composer, "C55@1805L19:OpcionPagoScreen.kt#qemjsp");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-960589084, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.consentimiento.ComposableSingletons$OpcionPagoScreenKt.lambda$-960589084.<anonymous> (OpcionPagoScreen.kt:55)");
            }
            TextKt.m2976Text4IGK_g("Pago online", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit lambda__902606811$lambda$2(RowScope Button, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(Button, "$this$Button");
        ComposerKt.sourceInformation($composer, "C73@2332L17:OpcionPagoScreen.kt#qemjsp");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-902606811, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.consentimiento.ComposableSingletons$OpcionPagoScreenKt.lambda$-902606811.<anonymous> (OpcionPagoScreen.kt:73)");
            }
            TextKt.m2976Text4IGK_g("Continuar", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }
}
