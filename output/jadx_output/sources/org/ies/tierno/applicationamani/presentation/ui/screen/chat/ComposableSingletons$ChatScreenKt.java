package org.ies.tierno.applicationamani.presentation.ui.screen.chat;

import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.automirrored.filled.ArrowBackKt;
import androidx.compose.material3.IconKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: ChatScreen.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
public final class ComposableSingletons$ChatScreenKt {
    public static final ComposableSingletons$ChatScreenKt INSTANCE = new ComposableSingletons$ChatScreenKt();
    private static Function2<Composer, Integer, Unit> lambda$1858986821 = ComposableLambdaKt.composableLambdaInstance(1858986821, false, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ComposableSingletons$ChatScreenKt$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ComposableSingletons$ChatScreenKt.lambda_1858986821$lambda$0((Composer) obj, ((Integer) obj2).intValue());
        }
    });

    public final Function2<Composer, Integer, Unit> getLambda$1858986821$app() {
        return lambda$1858986821;
    }

    static final Unit lambda_1858986821$lambda$0(Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C273@11407L144:ChatScreen.kt#5xjsc0");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1858986821, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.ComposableSingletons$ChatScreenKt.lambda$1858986821.<anonymous> (ChatScreen.kt:273)");
            }
            IconKt.m2433Iconww6aTOc(ArrowBackKt.getArrowBack(Icons.AutoMirrored.Filled.INSTANCE), "Volver", (Modifier) null, 0L, $composer, 48, 12);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }
}
