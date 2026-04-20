package org.ies.tierno.applicationamani.presentation.ui.componente;

import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.ies.tierno.applicationamani.R;

/* JADX INFO: compiled from: MenuPrincipal.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
public final class ComposableSingletons$MenuPrincipalKt {
    public static final ComposableSingletons$MenuPrincipalKt INSTANCE = new ComposableSingletons$MenuPrincipalKt();

    /* JADX INFO: renamed from: lambda$-1254878957, reason: not valid java name */
    private static Function2<Composer, Integer, Unit> f174lambda$1254878957 = ComposableLambdaKt.composableLambdaInstance(-1254878957, false, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.ComposableSingletons$MenuPrincipalKt$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ComposableSingletons$MenuPrincipalKt.lambda__1254878957$lambda$0((Composer) obj, ((Integer) obj2).intValue());
        }
    });
    private static Function2<Composer, Integer, Unit> lambda$904205137 = ComposableLambdaKt.composableLambdaInstance(904205137, false, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.ComposableSingletons$MenuPrincipalKt$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ComposableSingletons$MenuPrincipalKt.lambda_904205137$lambda$1((Composer) obj, ((Integer) obj2).intValue());
        }
    });

    /* JADX INFO: renamed from: getLambda$-1254878957$app, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m10403getLambda$1254878957$app() {
        return f174lambda$1254878957;
    }

    public final Function2<Composer, Integer, Unit> getLambda$904205137$app() {
        return lambda$904205137;
    }

    static final Unit lambda_904205137$lambda$1(Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C68@2572L46,67@2539L187:MenuPrincipal.kt#ef1jou");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(904205137, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.ComposableSingletons$MenuPrincipalKt.lambda$904205137.<anonymous> (MenuPrincipal.kt:67)");
            }
            ImageKt.Image(PainterResources_androidKt.painterResource(R.drawable.logo_original, $composer, 0), "Logo", SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(40)), (Alignment) null, (ContentScale) null, 0.0f, (ColorFilter) null, $composer, Painter.$stable | 432, 120);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit lambda__1254878957$lambda$0(Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C:MenuPrincipal.kt#ef1jou");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1254878957, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.ComposableSingletons$MenuPrincipalKt.lambda$-1254878957.<anonymous> (MenuPrincipal.kt:74)");
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }
}
