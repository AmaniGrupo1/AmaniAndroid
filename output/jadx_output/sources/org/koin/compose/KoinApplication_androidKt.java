package org.koin.compose;

import android.app.Application;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.ContextWrapper;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.internal.FunctionKeyMeta;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.android.ext.koin.KoinExtKt;
import org.koin.core.Koin;
import org.koin.core.KoinApplication;
import org.koin.core.component.KoinComponent;
import org.koin.core.logger.Level;
import org.koin.dsl.KoinConfiguration;
import org.koin.dsl.KoinConfigurationKt;

/* JADX INFO: compiled from: KoinApplication.android.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001f\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0001H\u0001¢\u0006\u0002\u0010\u0005\u001a\r\u0010\u0006\u001a\u00020\u0007H\u0001¢\u0006\u0002\u0010\b\u001a\f\u0010\t\u001a\u00020\n*\u00020\u000bH\u0003¨\u0006\f"}, d2 = {"composeMultiplatformConfiguration", "Lorg/koin/dsl/KoinConfiguration;", "loggerLevel", "Lorg/koin/core/logger/Level;", "config", "(Lorg/koin/core/logger/Level;Lorg/koin/dsl/KoinConfiguration;Landroidx/compose/runtime/Composer;II)Lorg/koin/dsl/KoinConfiguration;", "retrieveDefaultInstance", "Lorg/koin/core/Koin;", "(Landroidx/compose/runtime/Composer;I)Lorg/koin/core/Koin;", "findContextForKoin", "Landroid/content/ComponentCallbacks;", "Landroid/content/Context;", "koin-compose_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class KoinApplication_androidKt {
    @FunctionKeyMeta(endOffset = 1059, key = 1888289545, startOffset = 679)
    public static final KoinConfiguration composeMultiplatformConfiguration(final Level loggerLevel, final KoinConfiguration config, Composer $composer, int $changed, int i) {
        Intrinsics.checkNotNullParameter(config, "config");
        ComposerKt.sourceInformationMarkerStart($composer, 1888289545, "C(composeMultiplatformConfiguration)N(loggerLevel,config)21@822L7,22@955L102:KoinApplication.android.kt#8jjlyv");
        boolean z = true;
        if ((i & 1) != 0) {
            loggerLevel = Level.INFO;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1888289545, $changed, -1, "org.koin.compose.composeMultiplatformConfiguration (KoinApplication.android.kt:20)");
        }
        ProvidableCompositionLocal<Context> localContext = AndroidCompositionLocals_androidKt.getLocalContext();
        ComposerKt.sourceInformationMarkerStart($composer, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
        Object objConsume = $composer.consume(localContext);
        ComposerKt.sourceInformationMarkerEnd($composer);
        final Context appContext = ((Context) objConsume).getApplicationContext();
        if (appContext == null) {
            throw new IllegalStateException("Android ApplicationContext not found in current Compose context!".toString());
        }
        ComposerKt.sourceInformationMarkerStart($composer, -2124904529, "CC(remember):KoinApplication.android.kt#9igjgp");
        boolean zChangedInstance = $composer.changedInstance(appContext);
        if (((($changed & 14) ^ 6) <= 4 || !$composer.changed(loggerLevel.ordinal())) && ($changed & 6) != 4) {
            z = false;
        }
        boolean invalid$iv = zChangedInstance | z | $composer.changedInstance(config);
        Object it$iv = $composer.rememberedValue();
        if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
            Object value$iv = new Function1() { // from class: org.koin.compose.KoinApplication_androidKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return KoinApplication_androidKt.composeMultiplatformConfiguration$lambda$0$0(appContext, loggerLevel, config, (KoinApplication) obj);
                }
            };
            $composer.updateRememberedValue(value$iv);
            it$iv = value$iv;
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        KoinConfiguration koinConfiguration = KoinConfigurationKt.koinConfiguration((Function1) it$iv);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return koinConfiguration;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit composeMultiplatformConfiguration$lambda$0$0(Context $appContext, Level $loggerLevel, KoinConfiguration $config, KoinApplication koinConfiguration) {
        Intrinsics.checkNotNullParameter(koinConfiguration, "$this$koinConfiguration");
        KoinExtKt.androidContext(koinConfiguration, $appContext);
        KoinExtKt.androidLogger(koinConfiguration, $loggerLevel);
        KoinConfigurationKt.includes(koinConfiguration, $config);
        return Unit.INSTANCE;
    }

    @FunctionKeyMeta(endOffset = 1390, key = 256789730, startOffset = 1207)
    @Deprecated(message = "KoinContext is not needed anymore. This can be removed. Compose Koin context is setup with StartKoin()")
    public static final Koin retrieveDefaultInstance(Composer $composer, int $changed) {
        ComposerKt.sourceInformationMarkerStart($composer, 256789730, "C(retrieveDefaultInstance)32@1277L7,33@1300L72:KoinApplication.android.kt#8jjlyv");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(256789730, $changed, -1, "org.koin.compose.retrieveDefaultInstance (KoinApplication.android.kt:31)");
        }
        ProvidableCompositionLocal<Context> localContext = AndroidCompositionLocals_androidKt.getLocalContext();
        ComposerKt.sourceInformationMarkerStart($composer, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
        Object objConsume = $composer.consume(localContext);
        ComposerKt.sourceInformationMarkerEnd($composer);
        Context context = (Context) objConsume;
        ComposerKt.sourceInformationMarkerStart($composer, 1961797706, "CC(remember):KoinApplication.android.kt#9igjgp");
        boolean invalid$iv = $composer.changed(context);
        Object it$iv = $composer.rememberedValue();
        if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
            Object value$iv = ComponentCallbackExtKt.getKoin(findContextForKoin(context));
            $composer.updateRememberedValue(value$iv);
            it$iv = value$iv;
        }
        Koin koin = (Koin) it$iv;
        ComposerKt.sourceInformationMarkerEnd($composer);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return koin;
    }

    @Deprecated(message = "KoinContext is not needed anymore. This can be removed. Compose Koin context is setup with StartKoin()")
    private static final ComponentCallbacks findContextForKoin(Context $this$findContextForKoin) {
        Context context = $this$findContextForKoin;
        while (context instanceof ContextWrapper) {
            if ((context instanceof KoinComponent) && (context instanceof ComponentCallbacks)) {
                return (ComponentCallbacks) context;
            }
            Context baseContext = ((ContextWrapper) context).getBaseContext();
            Intrinsics.checkNotNullExpressionValue(baseContext, "getBaseContext(...)");
            context = baseContext;
        }
        Context applicationContext = $this$findContextForKoin.getApplicationContext();
        Intrinsics.checkNotNull(applicationContext, "null cannot be cast to non-null type android.app.Application");
        return (Application) applicationContext;
    }
}
