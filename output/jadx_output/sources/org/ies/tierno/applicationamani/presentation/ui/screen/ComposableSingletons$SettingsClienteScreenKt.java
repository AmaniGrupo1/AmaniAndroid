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
import androidx.navigation.Navigator;
import androidx.navigation.compose.NavHostControllerKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SettingsClienteScreen.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
public final class ComposableSingletons$SettingsClienteScreenKt {
    public static final ComposableSingletons$SettingsClienteScreenKt INSTANCE = new ComposableSingletons$SettingsClienteScreenKt();
    private static Function3<RowScope, Composer, Integer, Unit> lambda$389103287 = ComposableLambdaKt.composableLambdaInstance(389103287, false, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.ComposableSingletons$SettingsClienteScreenKt$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(Object obj, Object obj2, Object obj3) {
            return ComposableSingletons$SettingsClienteScreenKt.lambda_389103287$lambda$0((RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
        }
    });

    /* JADX INFO: renamed from: lambda$-543026898, reason: not valid java name */
    private static Function3<RowScope, Composer, Integer, Unit> f194lambda$543026898 = ComposableLambdaKt.composableLambdaInstance(-543026898, false, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.ComposableSingletons$SettingsClienteScreenKt$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(Object obj, Object obj2, Object obj3) {
            return ComposableSingletons$SettingsClienteScreenKt.lambda__543026898$lambda$1((RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
        }
    });

    /* JADX INFO: renamed from: lambda$-1461677, reason: not valid java name */
    private static Function3<RowScope, Composer, Integer, Unit> f193lambda$1461677 = ComposableLambdaKt.composableLambdaInstance(-1461677, false, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.ComposableSingletons$SettingsClienteScreenKt$$ExternalSyntheticLambda2
        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(Object obj, Object obj2, Object obj3) {
            return ComposableSingletons$SettingsClienteScreenKt.lambda__1461677$lambda$2((RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
        }
    });
    private static Function2<Composer, Integer, Unit> lambda$827175809 = ComposableLambdaKt.composableLambdaInstance(827175809, false, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.ComposableSingletons$SettingsClienteScreenKt$$ExternalSyntheticLambda3
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ComposableSingletons$SettingsClienteScreenKt.lambda_827175809$lambda$3((Composer) obj, ((Integer) obj2).intValue());
        }
    });

    /* JADX INFO: renamed from: getLambda$-1461677$app, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m10423getLambda$1461677$app() {
        return f193lambda$1461677;
    }

    /* JADX INFO: renamed from: getLambda$-543026898$app, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m10424getLambda$543026898$app() {
        return f194lambda$543026898;
    }

    public final Function3<RowScope, Composer, Integer, Unit> getLambda$389103287$app() {
        return lambda$389103287;
    }

    public final Function2<Composer, Integer, Unit> getLambda$827175809$app() {
        return lambda$827175809;
    }

    static final Unit lambda_389103287$lambda$0(RowScope Button, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(Button, "$this$Button");
        ComposerKt.sourceInformation($composer, "C168@6888L32:SettingsClienteScreen.kt#8o7o96");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(389103287, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.ComposableSingletons$SettingsClienteScreenKt.lambda$389103287.<anonymous> (SettingsClienteScreen.kt:168)");
            }
            TextKt.m2976Text4IGK_g("Consentimiento informado", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit lambda__543026898$lambda$1(RowScope Button, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(Button, "$this$Button");
        ComposerKt.sourceInformation($composer, "C180@7377L27:SettingsClienteScreen.kt#8o7o96");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-543026898, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.ComposableSingletons$SettingsClienteScreenKt.lambda$-543026898.<anonymous> (SettingsClienteScreen.kt:180)");
            }
            TextKt.m2976Text4IGK_g("Protección de datos", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit lambda__1461677$lambda$2(RowScope Button, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(Button, "$this$Button");
        ComposerKt.sourceInformation($composer, "C192@7777L23:SettingsClienteScreen.kt#8o7o96");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1461677, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.ComposableSingletons$SettingsClienteScreenKt.lambda$-1461677.<anonymous> (SettingsClienteScreen.kt:192)");
            }
            TextKt.m2976Text4IGK_g("Guardar cambios", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit lambda_827175809$lambda$3(Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C251@9435L23,251@9413L46:SettingsClienteScreen.kt#8o7o96");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(827175809, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.ComposableSingletons$SettingsClienteScreenKt.lambda$827175809.<anonymous> (SettingsClienteScreen.kt:251)");
            }
            SettingsClienteScreenKt.SettingsClienteScreen(NavHostControllerKt.rememberNavController(new Navigator[0], $composer, 0), null, $composer, 0, 2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }
}
