package org.ies.tierno.applicationamani.presentation.ui.screen;

import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
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
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.ui.theme.AmaniExtraColors;
import org.ies.tierno.applicationamani.ui.theme.ThemeKt;

/* JADX INFO: compiled from: LoginScreen.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
public final class ComposableSingletons$LoginScreenKt {
    public static final ComposableSingletons$LoginScreenKt INSTANCE = new ComposableSingletons$LoginScreenKt();
    private static Function2<Composer, Integer, Unit> lambda$693038124 = ComposableLambdaKt.composableLambdaInstance(693038124, false, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.ComposableSingletons$LoginScreenKt$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ComposableSingletons$LoginScreenKt.lambda_693038124$lambda$0((Composer) obj, ((Integer) obj2).intValue());
        }
    });
    private static Function2<Composer, Integer, Unit> lambda$1962743011 = ComposableLambdaKt.composableLambdaInstance(1962743011, false, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.ComposableSingletons$LoginScreenKt$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ComposableSingletons$LoginScreenKt.lambda_1962743011$lambda$1((Composer) obj, ((Integer) obj2).intValue());
        }
    });
    private static Function2<Composer, Integer, Unit> lambda$1163884097 = ComposableLambdaKt.composableLambdaInstance(1163884097, false, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.ComposableSingletons$LoginScreenKt$$ExternalSyntheticLambda2
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ComposableSingletons$LoginScreenKt.lambda_1163884097$lambda$10((Composer) obj, ((Integer) obj2).intValue());
        }
    });

    public final Function2<Composer, Integer, Unit> getLambda$1163884097$app() {
        return lambda$1163884097;
    }

    public final Function2<Composer, Integer, Unit> getLambda$1962743011$app() {
        return lambda$1962743011;
    }

    public final Function2<Composer, Integer, Unit> getLambda$693038124$app() {
        return lambda$693038124;
    }

    static final Unit lambda_693038124$lambda$0(Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C210@8434L27:LoginScreen.kt#8o7o96");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(693038124, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.ComposableSingletons$LoginScreenKt.lambda$693038124.<anonymous> (LoginScreen.kt:210)");
            }
            TextKt.m2976Text4IGK_g("usuario@ejemplo.com", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit lambda_1962743011$lambda$1(Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C239@9971L14:LoginScreen.kt#8o7o96");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1962743011, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.ComposableSingletons$LoginScreenKt.lambda$1962743011.<anonymous> (LoginScreen.kt:239)");
            }
            TextKt.m2976Text4IGK_g("••••••", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit lambda_1163884097$lambda$10(Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C330@14034L11,331@14089L7,332@14136L10,337@14286L2,339@14359L2,342@14453L2,343@14487L2,334@14156L448:LoginScreen.kt#8o7o96");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1163884097, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.ComposableSingletons$LoginScreenKt.lambda$1163884097.<anonymous> (LoginScreen.kt:330)");
            }
            ColorScheme colors = MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable);
            ProvidableCompositionLocal<AmaniExtraColors> localAmaniColors = ThemeKt.getLocalAmaniColors();
            ComposerKt.sourceInformationMarkerStart($composer, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume = $composer.consume(localAmaniColors);
            ComposerKt.sourceInformationMarkerEnd($composer);
            AmaniExtraColors amaniColors = (AmaniExtraColors) objConsume;
            Typography typography = MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable);
            Modifier.Companion companion = Modifier.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer, 1801129507, "CC(remember):LoginScreen.kt#9igjgp");
            Object objRememberedValue = $composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.ComposableSingletons$LoginScreenKt$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return ComposableSingletons$LoginScreenKt.lambda_1163884097$lambda$10$lambda$3$lambda$2((String) obj2);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            Function1 function1 = (Function1) objRememberedValue;
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerStart($composer, 1801131843, "CC(remember):LoginScreen.kt#9igjgp");
            Object objRememberedValue2 = $composer.rememberedValue();
            if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                Object obj2 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.ComposableSingletons$LoginScreenKt$$ExternalSyntheticLambda4
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        return ComposableSingletons$LoginScreenKt.lambda_1163884097$lambda$10$lambda$5$lambda$4((String) obj3);
                    }
                };
                $composer.updateRememberedValue(obj2);
                objRememberedValue2 = obj2;
            }
            Function1 function12 = (Function1) objRememberedValue2;
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerStart($composer, 1801134851, "CC(remember):LoginScreen.kt#9igjgp");
            Object objRememberedValue3 = $composer.rememberedValue();
            if (objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                Object obj3 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.ComposableSingletons$LoginScreenKt$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Unit.INSTANCE;
                    }
                };
                $composer.updateRememberedValue(obj3);
                objRememberedValue3 = obj3;
            }
            Function0 function0 = (Function0) objRememberedValue3;
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerStart($composer, 1801135939, "CC(remember):LoginScreen.kt#9igjgp");
            Object objRememberedValue4 = $composer.rememberedValue();
            if (objRememberedValue4 == Composer.INSTANCE.getEmpty()) {
                Object obj4 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.ComposableSingletons$LoginScreenKt$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Unit.INSTANCE;
                    }
                };
                $composer.updateRememberedValue(obj4);
                objRememberedValue4 = obj4;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            LoginScreenKt.LoginScreenContent(companion, "usuario@ejemplo.com", function1, "password123", function12, false, true, function0, (Function0) objRememberedValue4, colors, amaniColors, typography, $composer, 115043766, 0, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit lambda_1163884097$lambda$10$lambda$3$lambda$2(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    static final Unit lambda_1163884097$lambda$10$lambda$5$lambda$4(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }
}
