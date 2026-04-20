package org.koin.compose.application;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.FunctionKeyMeta;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.koin.compose.KoinApplication_androidKt;
import org.koin.core.Koin;
import org.koin.core.KoinApplication;
import org.koin.core.logger.Level;
import org.koin.dsl.KoinApplicationKt;
import org.koin.dsl.KoinConfiguration;
import org.koin.mp.KoinPlatform;

/* JADX INFO: compiled from: RememberKoinApplication.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a0\u0010\u0000\u001a\u00020\u00012\u001d\b\b\u0010\u0002\u001a\u0017\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u0007¢\u0006\u0002\b\u0006H\u0087\bø\u0001\u0000¢\u0006\u0002\u0010\b\u001a\u001e\u0010\t\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0087\b¢\u0006\u0002\u0010\u000e\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000f"}, d2 = {"rememberKoinApplication", "Lorg/koin/core/Koin;", "koinAppDeclaration", "Lkotlin/Function1;", "Lorg/koin/core/KoinApplication;", "", "Lkotlin/ExtensionFunctionType;", "Lorg/koin/dsl/KoinAppDeclaration;", "(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Lorg/koin/core/Koin;", "rememberKoinMPApplication", "configuration", "Lorg/koin/dsl/KoinConfiguration;", "logLevel", "Lorg/koin/core/logger/Level;", "(Lorg/koin/dsl/KoinConfiguration;Lorg/koin/core/logger/Level;Landroidx/compose/runtime/Composer;I)Lorg/koin/core/Koin;", "koin-compose_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class RememberKoinApplicationKt {
    @FunctionKeyMeta(endOffset = 1503, key = 1053492787, startOffset = 1131)
    public static final Koin rememberKoinApplication(Function1<? super KoinApplication, Unit> koinAppDeclaration, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(koinAppDeclaration, "koinAppDeclaration");
        ComposerKt.sourceInformationMarkerStart($composer, 1053492787, "CC(rememberKoinApplication)N(koinAppDeclaration)33@1234L166:RememberKoinApplication.kt#f93w7t");
        ComposerKt.sourceInformationMarkerStart($composer, -1205710087, "CC(remember):RememberKoinApplication.kt#9igjgp");
        boolean invalid$iv = ((($changed & 14) ^ 6) > 4 && $composer.changed(koinAppDeclaration)) || ($changed & 6) == 4;
        Object it$iv = $composer.rememberedValue();
        if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
            Object value$iv = new CompositionKoinApplicationLoader(KoinPlatform.INSTANCE.getKoinOrNull() == null ? KoinApplicationKt.koinApplication(koinAppDeclaration) : null);
            $composer.updateRememberedValue(value$iv);
            it$iv = value$iv;
        }
        CompositionKoinApplicationLoader wrapper = (CompositionKoinApplicationLoader) it$iv;
        ComposerKt.sourceInformationMarkerEnd($composer);
        Koin koin = wrapper.getKoin();
        if (koin == null) {
            throw new IllegalStateException("Koin context has not been initialized in rememberKoinApplication".toString());
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return koin;
    }

    @FunctionKeyMeta(endOffset = 2058, key = 539440252, startOffset = 1572)
    public static final Koin rememberKoinMPApplication(KoinConfiguration configuration, Level logLevel, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        ComposerKt.sourceInformationMarkerStart($composer, 539440252, "CC(rememberKoinMPApplication)N(configuration,logLevel)43@1691L67,44@1777L178:RememberKoinApplication.kt#f93w7t");
        KoinConfiguration mergedConfiguration = KoinApplication_androidKt.composeMultiplatformConfiguration(logLevel, configuration, $composer, (($changed >> 3) & 14) | (($changed << 3) & 112), 0);
        ComposerKt.sourceInformationMarkerStart($composer, -1288953906, "CC(remember):RememberKoinApplication.kt#9igjgp");
        boolean invalid$iv = (((($changed & 112) ^ 48) > 32 && $composer.changed(logLevel.ordinal())) || ($changed & 48) == 32) | $composer.changed(mergedConfiguration);
        Object it$iv = $composer.rememberedValue();
        if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
            Object value$iv = new CompositionKoinApplicationLoader(KoinPlatform.INSTANCE.getKoinOrNull() == null ? KoinApplicationKt.koinApplication(mergedConfiguration) : null);
            $composer.updateRememberedValue(value$iv);
            it$iv = value$iv;
        }
        CompositionKoinApplicationLoader wrapper = (CompositionKoinApplicationLoader) it$iv;
        ComposerKt.sourceInformationMarkerEnd($composer);
        Koin koin = wrapper.getKoin();
        if (koin == null) {
            throw new IllegalStateException("Koin context has not been initialized in rememberKoinApplication".toString());
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return koin;
    }
}
