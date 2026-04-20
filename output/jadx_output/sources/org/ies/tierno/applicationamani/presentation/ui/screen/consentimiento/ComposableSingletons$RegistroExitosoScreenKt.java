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

/* JADX INFO: compiled from: RegistroExitosoScreen.kt */
/* JADX INFO: loaded from: classes9.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
public final class ComposableSingletons$RegistroExitosoScreenKt {
    public static final ComposableSingletons$RegistroExitosoScreenKt INSTANCE = new ComposableSingletons$RegistroExitosoScreenKt();

    /* JADX INFO: renamed from: lambda$-2026952961, reason: not valid java name */
    private static Function3<RowScope, Composer, Integer, Unit> f202lambda$2026952961 = ComposableLambdaKt.composableLambdaInstance(-2026952961, false, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.consentimiento.ComposableSingletons$RegistroExitosoScreenKt$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(Object obj, Object obj2, Object obj3) {
            return ComposableSingletons$RegistroExitosoScreenKt.lambda__2026952961$lambda$0((RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
        }
    });

    /* JADX INFO: renamed from: getLambda$-2026952961$app, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m10438getLambda$2026952961$app() {
        return f202lambda$2026952961;
    }

    static final Unit lambda__2026952961$lambda$0(RowScope Button, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(Button, "$this$Button");
        ComposerKt.sourceInformation($composer, "C48@1635L19:RegistroExitosoScreen.kt#qemjsp");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-2026952961, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.consentimiento.ComposableSingletons$RegistroExitosoScreenKt.lambda$-2026952961.<anonymous> (RegistroExitosoScreen.kt:48)");
            }
            TextKt.m2976Text4IGK_g("Ir al login", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }
}
