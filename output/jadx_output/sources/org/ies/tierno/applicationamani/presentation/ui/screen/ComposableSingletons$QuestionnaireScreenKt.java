package org.ies.tierno.applicationamani.presentation.ui.screen;

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

/* JADX INFO: compiled from: QuestionnaireScreen.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
public final class ComposableSingletons$QuestionnaireScreenKt {
    public static final ComposableSingletons$QuestionnaireScreenKt INSTANCE = new ComposableSingletons$QuestionnaireScreenKt();

    /* JADX INFO: renamed from: lambda$-484677457, reason: not valid java name */
    private static Function3<RowScope, Composer, Integer, Unit> f192lambda$484677457 = ComposableLambdaKt.composableLambdaInstance(-484677457, false, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.ComposableSingletons$QuestionnaireScreenKt$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(Object obj, Object obj2, Object obj3) {
            return ComposableSingletons$QuestionnaireScreenKt.lambda__484677457$lambda$0((RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
        }
    });

    /* JADX INFO: renamed from: getLambda$-484677457$app, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m10422getLambda$484677457$app() {
        return f192lambda$484677457;
    }

    static final Unit lambda__484677457$lambda$0(RowScope Button, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(Button, "$this$Button");
        ComposerKt.sourceInformation($composer, "C130@5047L17:QuestionnaireScreen.kt#8o7o96");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-484677457, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.ComposableSingletons$QuestionnaireScreenKt.lambda$-484677457.<anonymous> (QuestionnaireScreen.kt:130)");
            }
            TextKt.m2976Text4IGK_g("Continuar", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }
}
