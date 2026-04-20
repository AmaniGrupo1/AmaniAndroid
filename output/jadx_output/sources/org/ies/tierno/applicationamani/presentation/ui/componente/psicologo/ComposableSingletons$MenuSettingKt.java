package org.ies.tierno.applicationamani.presentation.ui.componente.psicologo;

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

/* JADX INFO: compiled from: MenuSetting.kt */
/* JADX INFO: loaded from: classes16.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
public final class ComposableSingletons$MenuSettingKt {
    public static final ComposableSingletons$MenuSettingKt INSTANCE = new ComposableSingletons$MenuSettingKt();

    /* JADX INFO: renamed from: lambda$-1908917986, reason: not valid java name */
    private static Function2<Composer, Integer, Unit> f181lambda$1908917986 = ComposableLambdaKt.composableLambdaInstance(-1908917986, false, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.ComposableSingletons$MenuSettingKt$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ComposableSingletons$MenuSettingKt.lambda__1908917986$lambda$0((Composer) obj, ((Integer) obj2).intValue());
        }
    });

    /* JADX INFO: renamed from: lambda$-1523055584, reason: not valid java name */
    private static Function2<Composer, Integer, Unit> f180lambda$1523055584 = ComposableLambdaKt.composableLambdaInstance(-1523055584, false, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.ComposableSingletons$MenuSettingKt$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ComposableSingletons$MenuSettingKt.lambda__1523055584$lambda$1((Composer) obj, ((Integer) obj2).intValue());
        }
    });

    /* JADX INFO: renamed from: getLambda$-1523055584$app, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m10410getLambda$1523055584$app() {
        return f180lambda$1523055584;
    }

    /* JADX INFO: renamed from: getLambda$-1908917986$app, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m10411getLambda$1908917986$app() {
        return f181lambda$1908917986;
    }

    static final Unit lambda__1523055584$lambda$1(Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C52@1978L46,51@1945L187:MenuSetting.kt#d6dcan");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1523055584, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.ComposableSingletons$MenuSettingKt.lambda$-1523055584.<anonymous> (MenuSetting.kt:51)");
            }
            ImageKt.Image(PainterResources_androidKt.painterResource(R.drawable.logo_original, $composer, 0), "Logo", SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(40)), (Alignment) null, (ContentScale) null, 0.0f, (ColorFilter) null, $composer, Painter.$stable | 432, 120);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit lambda__1908917986$lambda$0(Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C:MenuSetting.kt#d6dcan");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1908917986, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.ComposableSingletons$MenuSettingKt.lambda$-1908917986.<anonymous> (MenuSetting.kt:57)");
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
