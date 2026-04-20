package org.ies.tierno.applicationamani.presentation.ui.screen.chat;

import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.automirrored.filled.ArrowBackKt;
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

/* JADX INFO: compiled from: ChatListScreen.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
public final class ComposableSingletons$ChatListScreenKt {
    public static final ComposableSingletons$ChatListScreenKt INSTANCE = new ComposableSingletons$ChatListScreenKt();
    private static Function2<Composer, Integer, Unit> lambda$1256537327 = ComposableLambdaKt.composableLambdaInstance(1256537327, false, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ComposableSingletons$ChatListScreenKt$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ComposableSingletons$ChatListScreenKt.lambda_1256537327$lambda$0((Composer) obj, ((Integer) obj2).intValue());
        }
    });
    private static Function2<Composer, Integer, Unit> lambda$1190106126 = ComposableLambdaKt.composableLambdaInstance(1190106126, false, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ComposableSingletons$ChatListScreenKt$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ComposableSingletons$ChatListScreenKt.lambda_1190106126$lambda$1((Composer) obj, ((Integer) obj2).intValue());
        }
    });

    public final Function2<Composer, Integer, Unit> getLambda$1190106126$app() {
        return lambda$1190106126;
    }

    public final Function2<Composer, Integer, Unit> getLambda$1256537327$app() {
        return lambda$1256537327;
    }

    static final Unit lambda_1256537327$lambda$0(Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C66@3025L16:ChatListScreen.kt#5xjsc0");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1256537327, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.ComposableSingletons$ChatListScreenKt.lambda$1256537327.<anonymous> (ChatListScreen.kt:66)");
            }
            TextKt.m2976Text4IGK_g("Mensajes", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit lambda_1190106126$lambda$1(Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C69@3181L168:ChatListScreen.kt#5xjsc0");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1190106126, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.ComposableSingletons$ChatListScreenKt.lambda$1190106126.<anonymous> (ChatListScreen.kt:69)");
            }
            IconKt.m2433Iconww6aTOc(ArrowBackKt.getArrowBack(Icons.AutoMirrored.Filled.INSTANCE), "Volver", (Modifier) null, 0L, $composer, 48, 12);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }
}
