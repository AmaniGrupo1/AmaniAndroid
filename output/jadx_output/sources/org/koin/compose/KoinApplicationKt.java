package org.koin.compose;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.FunctionKeyMeta;
import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.RendererCapabilities;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.koin.compose.application.CompositionKoinApplicationLoader;
import org.koin.core.Koin;
import org.koin.core.KoinApplication;
import org.koin.core.annotation.KoinExperimentalAPI;
import org.koin.core.logger.Level;
import org.koin.core.scope.Scope;
import org.koin.dsl.KoinConfiguration;
import org.koin.mp.KoinPlatform;

/* JADX INFO: compiled from: KoinApplication.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000P\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\u001a\b\u0010\u0012\u001a\u00020\bH\u0002\u001a\b\u0010\u0013\u001a\u00020\u0002H\u0002\u001a\r\u0010\u0014\u001a\u00020\bH\u0007¢\u0006\u0002\u0010\u0015\u001a\r\u0010\u0016\u001a\u00020\u0002H\u0007¢\u0006\u0002\u0010\u0017\u001a=\u0010\u0018\u001a\u00020\u00192\u001b\u0010\u001a\u001a\u0017\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00190\u001bj\u0002`\u001e¢\u0006\u0002\b\u001d2\u0011\u0010\u001f\u001a\r\u0012\u0004\u0012\u00020\u00190 ¢\u0006\u0002\b!H\u0007¢\u0006\u0002\u0010\"\u001a2\u0010\u0018\u001a\u00020\u00192\u0006\u0010#\u001a\u00020$2\b\b\u0002\u0010%\u001a\u00020&2\u0011\u0010\u001f\u001a\r\u0012\u0004\u0012\u00020\u00190 ¢\u0006\u0002\b!H\u0007¢\u0006\u0002\u0010'\u001a2\u0010(\u001a\u00020\u00192\u0006\u0010)\u001a\u00020$2\b\b\u0002\u0010%\u001a\u00020&2\u0011\u0010\u001f\u001a\r\u0012\u0004\u0012\u00020\u00190 ¢\u0006\u0002\b!H\u0007¢\u0006\u0002\u0010'\u001a*\u0010*\u001a\u00020\u00192\b\b\u0002\u0010+\u001a\u00020\b2\u0011\u0010\u001f\u001a\r\u0012\u0004\u0012\u00020\u00190 ¢\u0006\u0002\b!H\u0007¢\u0006\u0002\u0010,\u001a(\u0010-\u001a\u00020\u00192\u0006\u0010.\u001a\u00020\u001c2\u0011\u0010\u001f\u001a\r\u0012\u0004\u0012\u00020\u00190 ¢\u0006\u0002\b!H\u0007¢\u0006\u0002\u0010/\u001a=\u00100\u001a\u00020\u00192\u001b\u0010\u001a\u001a\u0017\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00190\u001bj\u0002`\u001e¢\u0006\u0002\b\u001d2\u0011\u0010\u001f\u001a\r\u0012\u0004\u0012\u00020\u00190 ¢\u0006\u0002\b!H\u0007¢\u0006\u0002\u0010\"\"\"\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00018\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\"\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00018\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"(\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\f0\u00018\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\r\u0010\u0004\u001a\u0004\b\u000e\u0010\u0006\"(\u0010\u000f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\f0\u00018\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0010\u0010\u0004\u001a\u0004\b\u0011\u0010\u0006¨\u00061"}, d2 = {"LocalKoinScope", "Landroidx/compose/runtime/ProvidableCompositionLocal;", "Lorg/koin/core/scope/Scope;", "getLocalKoinScope$annotations", "()V", "getLocalKoinScope", "()Landroidx/compose/runtime/ProvidableCompositionLocal;", "LocalKoinApplication", "Lorg/koin/core/Koin;", "getLocalKoinApplication$annotations", "getLocalKoinApplication", "LocalKoinScopeContext", "Lorg/koin/compose/ComposeContextWrapper;", "getLocalKoinScopeContext$annotations", "getLocalKoinScopeContext", "LocalKoinApplicationContext", "getLocalKoinApplicationContext$annotations", "getLocalKoinApplicationContext", "getDefaultKoinContext", "getDefaultRootScope", "getKoin", "(Landroidx/compose/runtime/Composer;I)Lorg/koin/core/Koin;", "currentKoinScope", "(Landroidx/compose/runtime/Composer;I)Lorg/koin/core/scope/Scope;", "KoinApplication", "", MimeTypes.BASE_TYPE_APPLICATION, "Lkotlin/Function1;", "Lorg/koin/core/KoinApplication;", "Lkotlin/ExtensionFunctionType;", "Lorg/koin/dsl/KoinAppDeclaration;", "content", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "configuration", "Lorg/koin/dsl/KoinConfiguration;", "logLevel", "Lorg/koin/core/logger/Level;", "(Lorg/koin/dsl/KoinConfiguration;Lorg/koin/core/logger/Level;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V", "KoinMultiplatformApplication", "config", "KoinContext", "koin", "(Lorg/koin/core/Koin;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V", "KoinIsolatedContext", "context", "(Lorg/koin/core/KoinApplication;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "KoinApplicationPreview", "koin-compose_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class KoinApplicationKt {
    private static final ProvidableCompositionLocal<Scope> LocalKoinScope = CompositionLocalKt.compositionLocalOf$default(null, new Function0() { // from class: org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda7
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return KoinApplicationKt.LocalKoinScope$lambda$0();
        }
    }, 1, null);
    private static final ProvidableCompositionLocal<Koin> LocalKoinApplication = CompositionLocalKt.compositionLocalOf$default(null, new Function0() { // from class: org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda8
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return KoinApplicationKt.LocalKoinApplication$lambda$0();
        }
    }, 1, null);
    private static final ProvidableCompositionLocal<ComposeContextWrapper<Scope>> LocalKoinScopeContext = CompositionLocalKt.compositionLocalOf$default(null, new Function0() { // from class: org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda9
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return KoinApplicationKt.LocalKoinScopeContext$lambda$0();
        }
    }, 1, null);
    private static final ProvidableCompositionLocal<ComposeContextWrapper<Koin>> LocalKoinApplicationContext = CompositionLocalKt.compositionLocalOf$default(null, new Function0() { // from class: org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda10
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return KoinApplicationKt.LocalKoinApplicationContext$lambda$0();
        }
    }, 1, null);

    static final Unit KoinApplication$lambda$2(Function1 function1, Function2 function2, int i, Composer composer, int i2) {
        KoinApplication(function1, function2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit KoinApplication$lambda$5(KoinConfiguration koinConfiguration, Level level, Function2 function2, int i, int i2, Composer composer, int i3) {
        KoinApplication(koinConfiguration, level, function2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    static final Unit KoinApplicationPreview$lambda$2(Function1 function1, Function2 function2, int i, Composer composer, int i2) {
        KoinApplicationPreview(function1, function2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit KoinContext$lambda$2(Koin koin, Function2 function2, int i, int i2, Composer composer, int i3) {
        KoinContext(koin, function2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    static final Unit KoinIsolatedContext$lambda$2(KoinApplication koinApplication, Function2 function2, int i, Composer composer, int i2) {
        KoinIsolatedContext(koinApplication, function2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit KoinMultiplatformApplication$lambda$2(KoinConfiguration koinConfiguration, Level level, Function2 function2, int i, int i2, Composer composer, int i3) {
        KoinMultiplatformApplication(koinConfiguration, level, function2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "LocalKoinApplication is deprecated. Use getKoin() to access the Koin instance directly.", replaceWith = @ReplaceWith(expression = "getKoin()", imports = {}))
    public static /* synthetic */ void getLocalKoinApplication$annotations() {
    }

    public static /* synthetic */ void getLocalKoinApplicationContext$annotations() {
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "LocalKoinScope has been replaced with LocalKoinScopeContext, using ComposeContextWrapper.getValue() to retrieve the value. See also KoinScope() or UnboundKoinScope() Compose functions", replaceWith = @ReplaceWith(expression = "LocalKoinScopeContext", imports = {}))
    public static /* synthetic */ void getLocalKoinScope$annotations() {
    }

    public static /* synthetic */ void getLocalKoinScopeContext$annotations() {
    }

    static final Scope LocalKoinScope$lambda$0() {
        throw new IllegalStateException("should not be used in favor of LocalKoinScopeContext".toString());
    }

    public static final ProvidableCompositionLocal<Scope> getLocalKoinScope() {
        return LocalKoinScope;
    }

    static final Koin LocalKoinApplication$lambda$0() {
        throw new IllegalStateException("should not be used in favor of getKoin()".toString());
    }

    public static final ProvidableCompositionLocal<Koin> getLocalKoinApplication() {
        return LocalKoinApplication;
    }

    static final ComposeContextWrapper LocalKoinScopeContext$lambda$0() {
        return new ComposeContextWrapper(getDefaultRootScope(), new Function0() { // from class: org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return KoinApplicationKt.getDefaultRootScope();
            }
        });
    }

    public static final ProvidableCompositionLocal<ComposeContextWrapper<Scope>> getLocalKoinScopeContext() {
        return LocalKoinScopeContext;
    }

    static final ComposeContextWrapper LocalKoinApplicationContext$lambda$0() {
        return new ComposeContextWrapper(getDefaultKoinContext(), new Function0() { // from class: org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return KoinApplicationKt.getDefaultKoinContext();
            }
        });
    }

    public static final ProvidableCompositionLocal<ComposeContextWrapper<Koin>> getLocalKoinApplicationContext() {
        return LocalKoinApplicationContext;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Koin getDefaultKoinContext() {
        return KoinPlatform.INSTANCE.getKoin();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Scope getDefaultRootScope() {
        return KoinPlatform.INSTANCE.getKoin().getScopeRegistry().getRootScope();
    }

    @FunctionKeyMeta(endOffset = 3848, key = 523578110, startOffset = 3580)
    public static final Koin getKoin(Composer $composer, int $changed) {
        Koin koin;
        ComposerKt.sourceInformationMarkerStart($composer, 523578110, "C(getKoin):KoinApplication.kt#8jjlyv");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(523578110, $changed, -1, "org.koin.compose.getKoin (KoinApplication.kt:88)");
        }
        try {
            koin = (Koin) ((ComposeContextWrapper) $composer.consume(LocalKoinApplicationContext)).getValue();
        } catch (Exception e) {
            Koin koin2 = (Koin) ((ComposeContextWrapper) $composer.consume(LocalKoinApplicationContext)).resetValue();
            if (koin2 == null) {
                throw new IllegalStateException(("Can't get Koin context due to error: " + e).toString());
            }
            koin = koin2;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return koin;
    }

    @FunctionKeyMeta(endOffset = 4462, key = 1668867238, startOffset = 4010)
    public static final Scope currentKoinScope(Composer $composer, int $changed) {
        Scope currentScope;
        ComposerKt.sourceInformationMarkerStart($composer, 1668867238, "C(currentKoinScope):KoinApplication.kt#8jjlyv");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1668867238, $changed, -1, "org.koin.compose.currentKoinScope (KoinApplication.kt:105)");
        }
        try {
            currentScope = (Scope) ((ComposeContextWrapper) $composer.consume(LocalKoinScopeContext)).getValue();
            if (currentScope.get_closed()) {
                Scope scope = (Scope) ((ComposeContextWrapper) $composer.consume(LocalKoinScopeContext)).resetValue();
                if (scope == null) {
                    throw new IllegalStateException(("Can't get Koin scope. Scope '" + currentScope + "' is closed").toString());
                }
                currentScope = scope;
            }
        } catch (Exception e) {
            Scope scope2 = (Scope) ((ComposeContextWrapper) $composer.consume(LocalKoinScopeContext)).resetValue();
            if (scope2 == null) {
                throw new IllegalStateException(("Can't get Koin scope due to error: " + e).toString());
            }
            currentScope = scope2;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return currentScope;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0159  */
    @FunctionKeyMeta(endOffset = 5640, key = -563172299, startOffset = 5207)
    @Deprecated(level = DeprecationLevel.WARNING, message = "Use KoinApplication(config: KoinConfiguration) with koinConfiguration { } instead of KoinAppDeclaration lambda", replaceWith = @ReplaceWith(expression = "KoinApplication(configuration = koinConfiguration(application), content = content)", imports = {"org.koin.dsl.koinConfiguration"}))
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void KoinApplication(final Function1<? super KoinApplication, Unit> application, final Function2<? super Composer, ? super Integer, Unit> content, Composer $composer, final int $changed) {
        char c;
        char c2;
        Koin koin;
        Intrinsics.checkNotNullParameter(application, "application");
        Intrinsics.checkNotNullParameter(content, "content");
        Composer $composer2 = $composer.startRestartGroup(-563172299);
        ComposerKt.sourceInformation($composer2, "C(KoinApplication)N(application,content)141@5320L36,143@5460L27,144@5580L25,142@5361L277:KoinApplication.kt#8jjlyv");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changedInstance(application) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changedInstance(content) ? 32 : 16;
        }
        if (!$composer2.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-563172299, $dirty, -1, "org.koin.compose.KoinApplication (KoinApplication.kt:140)");
            }
            int $changed$iv = $dirty & 14;
            ComposerKt.sourceInformationMarkerStart($composer2, 1053492787, "CC(rememberKoinApplication)N(koinAppDeclaration)33@1234L166:RememberKoinApplication.kt#f93w7t");
            ComposerKt.sourceInformationMarkerStart($composer2, -1205710087, "CC(remember):RememberKoinApplication.kt#9igjgp");
            boolean invalid$iv$iv = ((($changed$iv & 14) ^ 6) > 4 && $composer2.changed(application)) || ($changed$iv & 6) == 4;
            Object it$iv$iv = $composer2.rememberedValue();
            if (!invalid$iv$iv) {
                c = 0;
                if (it$iv$iv != Composer.INSTANCE.getEmpty()) {
                    c2 = 1;
                }
                CompositionKoinApplicationLoader wrapper$iv = (CompositionKoinApplicationLoader) it$iv$iv;
                ComposerKt.sourceInformationMarkerEnd($composer2);
                koin = wrapper$iv.getKoin();
                if (koin == null) {
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    ProvidedValue[] providedValueArr = new ProvidedValue[2];
                    ProvidableCompositionLocal<ComposeContextWrapper<Koin>> providableCompositionLocal = LocalKoinApplicationContext;
                    ComposerKt.sourceInformationMarkerStart($composer2, -42691920, "CC(remember):KoinApplication.kt#9igjgp");
                    Object it$iv = $composer2.rememberedValue();
                    if (it$iv == Composer.INSTANCE.getEmpty()) {
                        Object value$iv = new Function0() { // from class: org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda21
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return KoinApplicationKt.getDefaultKoinContext();
                            }
                        };
                        $composer2.updateRememberedValue(value$iv);
                        it$iv = value$iv;
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    providedValueArr[c] = providableCompositionLocal.provides(new ComposeContextWrapper<>(koin, (Function0) it$iv));
                    ProvidableCompositionLocal<ComposeContextWrapper<Scope>> providableCompositionLocal2 = LocalKoinScopeContext;
                    Scope rootScope = koin.getScopeRegistry().getRootScope();
                    ComposerKt.sourceInformationMarkerStart($composer2, -42688082, "CC(remember):KoinApplication.kt#9igjgp");
                    Object it$iv2 = $composer2.rememberedValue();
                    if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                        Object value$iv2 = new Function0() { // from class: org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda22
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return KoinApplicationKt.getDefaultRootScope();
                            }
                        };
                        $composer2.updateRememberedValue(value$iv2);
                        it$iv2 = value$iv2;
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    providedValueArr[c2] = providableCompositionLocal2.provides(new ComposeContextWrapper<>(rootScope, (Function0) it$iv2));
                    CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) providedValueArr, content, $composer2, ProvidedValue.$stable | ($dirty & 112));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                } else {
                    throw new IllegalStateException("Koin context has not been initialized in rememberKoinApplication".toString());
                }
            } else {
                c = 0;
            }
            c2 = 1;
            Object value$iv$iv = new CompositionKoinApplicationLoader(KoinPlatform.INSTANCE.getKoinOrNull() == null ? org.koin.dsl.KoinApplicationKt.koinApplication(application) : null);
            $composer2.updateRememberedValue(value$iv$iv);
            it$iv$iv = value$iv$iv;
            CompositionKoinApplicationLoader wrapper$iv2 = (CompositionKoinApplicationLoader) it$iv$iv;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            koin = wrapper$iv2.getKoin();
            if (koin == null) {
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda23
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return KoinApplicationKt.KoinApplication$lambda$2(application, content, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    @FunctionKeyMeta(endOffset = 7078, key = -579738367, startOffset = 6596)
    public static final void KoinApplication(final KoinConfiguration configuration, Level logLevel, final Function2<? super Composer, ? super Integer, Unit> content, Composer $composer, final int $changed, final int i) {
        final Level logLevel2;
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(content, "content");
        Composer $composer2 = $composer.startRestartGroup(-579738367);
        ComposerKt.sourceInformation($composer2, "C(KoinApplication)N(configuration,logLevel,content)186@6744L50,188@6898L27,189@7018L25,187@6799L277:KoinApplication.kt#8jjlyv");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changedInstance(configuration) ? 4 : 2;
        }
        int i2 = i & 2;
        if (i2 != 0) {
            $dirty |= 48;
        } else if (($changed & 48) == 0) {
            $dirty |= $composer2.changed(logLevel == null ? -1 : logLevel.ordinal()) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer2.changedInstance(content) ? 256 : 128;
        }
        int $dirty2 = $dirty;
        if (!$composer2.shouldExecute(($dirty2 & 147) != 146, $dirty2 & 1)) {
            $composer2.skipToGroupEnd();
            logLevel2 = logLevel;
        } else {
            if (i2 != 0) {
                logLevel2 = Level.INFO;
            } else {
                logLevel2 = logLevel;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-579738367, $dirty2, -1, "org.koin.compose.KoinApplication (KoinApplication.kt:185)");
            }
            int $changed$iv = ($dirty2 & 14) | ($dirty2 & 112);
            Level logLevel$iv = logLevel2;
            ComposerKt.sourceInformationMarkerStart($composer2, 539440252, "CC(rememberKoinMPApplication)N(configuration,logLevel)43@1691L67,44@1777L178:RememberKoinApplication.kt#f93w7t");
            KoinConfiguration mergedConfiguration$iv = KoinApplication_androidKt.composeMultiplatformConfiguration(logLevel$iv, configuration, $composer2, (($changed$iv >> 3) & 14) | (($changed$iv << 3) & 112), 0);
            ComposerKt.sourceInformationMarkerStart($composer2, -1288953906, "CC(remember):RememberKoinApplication.kt#9igjgp");
            boolean invalid$iv$iv = (((($changed$iv & 112) ^ 48) > 32 && $composer2.changed(logLevel$iv.ordinal())) || ($changed$iv & 48) == 32) | $composer2.changed(mergedConfiguration$iv);
            Object it$iv$iv = $composer2.rememberedValue();
            if (invalid$iv$iv || it$iv$iv == Composer.INSTANCE.getEmpty()) {
                Object value$iv$iv = new CompositionKoinApplicationLoader(KoinPlatform.INSTANCE.getKoinOrNull() == null ? org.koin.dsl.KoinApplicationKt.koinApplication(mergedConfiguration$iv) : null);
                $composer2.updateRememberedValue(value$iv$iv);
                it$iv$iv = value$iv$iv;
            }
            CompositionKoinApplicationLoader wrapper$iv = (CompositionKoinApplicationLoader) it$iv$iv;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            Koin koin = wrapper$iv.getKoin();
            if (koin != null) {
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ProvidedValue[] providedValueArr = new ProvidedValue[2];
                ProvidableCompositionLocal<ComposeContextWrapper<Koin>> providableCompositionLocal = LocalKoinApplicationContext;
                ComposerKt.sourceInformationMarkerStart($composer2, 1217187484, "CC(remember):KoinApplication.kt#9igjgp");
                Object it$iv = $composer2.rememberedValue();
                if (it$iv == Composer.INSTANCE.getEmpty()) {
                    Object value$iv = new Function0() { // from class: org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return KoinApplicationKt.getDefaultKoinContext();
                        }
                    };
                    $composer2.updateRememberedValue(value$iv);
                    it$iv = value$iv;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                providedValueArr[0] = providableCompositionLocal.provides(new ComposeContextWrapper<>(koin, (Function0) it$iv));
                ProvidableCompositionLocal<ComposeContextWrapper<Scope>> providableCompositionLocal2 = LocalKoinScopeContext;
                Scope rootScope = koin.getScopeRegistry().getRootScope();
                ComposerKt.sourceInformationMarkerStart($composer2, 1217191322, "CC(remember):KoinApplication.kt#9igjgp");
                Object it$iv2 = $composer2.rememberedValue();
                if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                    Object value$iv2 = new Function0() { // from class: org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda2
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return KoinApplicationKt.getDefaultRootScope();
                        }
                    };
                    $composer2.updateRememberedValue(value$iv2);
                    it$iv2 = value$iv2;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                providedValueArr[1] = providableCompositionLocal2.provides(new ComposeContextWrapper<>(rootScope, (Function0) it$iv2));
                CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) providedValueArr, content, $composer2, ProvidedValue.$stable | (($dirty2 >> 3) & 112));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                throw new IllegalStateException("Koin context has not been initialized in rememberKoinApplication".toString());
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return KoinApplicationKt.KoinApplication$lambda$5(configuration, logLevel2, content, $changed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    @FunctionKeyMeta(endOffset = 8640, key = -1144314045, startOffset = 8159)
    @Deprecated(message = "Use KoinApplication(configuration: KoinConfiguration, logLevel: Level) instead", replaceWith = @ReplaceWith(expression = "KoinApplication(configuration = config, logLevel = logLevel, content = content)", imports = {}))
    @KoinExperimentalAPI
    public static final void KoinMultiplatformApplication(final KoinConfiguration config, Level logLevel, final Function2<? super Composer, ? super Integer, Unit> content, Composer $composer, final int $changed, final int i) {
        final Level logLevel2;
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(content, "content");
        Composer $composer2 = $composer.startRestartGroup(-1144314045);
        ComposerKt.sourceInformation($composer2, "C(KoinMultiplatformApplication)N(config,logLevel,content)221@8313L43,223@8460L27,224@8580L25,222@8361L277:KoinApplication.kt#8jjlyv");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changedInstance(config) ? 4 : 2;
        }
        int i2 = i & 2;
        if (i2 != 0) {
            $dirty |= 48;
        } else if (($changed & 48) == 0) {
            $dirty |= $composer2.changed(logLevel == null ? -1 : logLevel.ordinal()) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer2.changedInstance(content) ? 256 : 128;
        }
        int $dirty2 = $dirty;
        if (!$composer2.shouldExecute(($dirty2 & 147) != 146, $dirty2 & 1)) {
            $composer2.skipToGroupEnd();
            logLevel2 = logLevel;
        } else {
            if (i2 != 0) {
                logLevel2 = Level.INFO;
            } else {
                logLevel2 = logLevel;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1144314045, $dirty2, -1, "org.koin.compose.KoinMultiplatformApplication (KoinApplication.kt:220)");
            }
            int $changed$iv = ($dirty2 & 14) | ($dirty2 & 112);
            Level logLevel$iv = logLevel2;
            ComposerKt.sourceInformationMarkerStart($composer2, 539440252, "CC(rememberKoinMPApplication)N(configuration,logLevel)43@1691L67,44@1777L178:RememberKoinApplication.kt#f93w7t");
            KoinConfiguration mergedConfiguration$iv = KoinApplication_androidKt.composeMultiplatformConfiguration(logLevel$iv, config, $composer2, (($changed$iv >> 3) & 14) | (($changed$iv << 3) & 112), 0);
            ComposerKt.sourceInformationMarkerStart($composer2, -1288953906, "CC(remember):RememberKoinApplication.kt#9igjgp");
            boolean invalid$iv$iv = (((($changed$iv & 112) ^ 48) > 32 && $composer2.changed(logLevel$iv.ordinal())) || ($changed$iv & 48) == 32) | $composer2.changed(mergedConfiguration$iv);
            Object it$iv$iv = $composer2.rememberedValue();
            if (invalid$iv$iv || it$iv$iv == Composer.INSTANCE.getEmpty()) {
                Object value$iv$iv = new CompositionKoinApplicationLoader(KoinPlatform.INSTANCE.getKoinOrNull() == null ? org.koin.dsl.KoinApplicationKt.koinApplication(mergedConfiguration$iv) : null);
                $composer2.updateRememberedValue(value$iv$iv);
                it$iv$iv = value$iv$iv;
            }
            CompositionKoinApplicationLoader wrapper$iv = (CompositionKoinApplicationLoader) it$iv$iv;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            Koin koin = wrapper$iv.getKoin();
            if (koin != null) {
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ProvidedValue[] providedValueArr = new ProvidedValue[2];
                ProvidableCompositionLocal<ComposeContextWrapper<Koin>> providableCompositionLocal = LocalKoinApplicationContext;
                ComposerKt.sourceInformationMarkerStart($composer2, -174159810, "CC(remember):KoinApplication.kt#9igjgp");
                Object it$iv = $composer2.rememberedValue();
                if (it$iv == Composer.INSTANCE.getEmpty()) {
                    Object value$iv = new Function0() { // from class: org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda12
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return KoinApplicationKt.getDefaultKoinContext();
                        }
                    };
                    $composer2.updateRememberedValue(value$iv);
                    it$iv = value$iv;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                providedValueArr[0] = providableCompositionLocal.provides(new ComposeContextWrapper<>(koin, (Function0) it$iv));
                ProvidableCompositionLocal<ComposeContextWrapper<Scope>> providableCompositionLocal2 = LocalKoinScopeContext;
                Scope rootScope = koin.getScopeRegistry().getRootScope();
                ComposerKt.sourceInformationMarkerStart($composer2, -174155972, "CC(remember):KoinApplication.kt#9igjgp");
                Object it$iv2 = $composer2.rememberedValue();
                if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                    Object value$iv2 = new Function0() { // from class: org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda13
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return KoinApplicationKt.getDefaultRootScope();
                        }
                    };
                    $composer2.updateRememberedValue(value$iv2);
                    it$iv2 = value$iv2;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                providedValueArr[1] = providableCompositionLocal2.provides(new ComposeContextWrapper<>(rootScope, (Function0) it$iv2));
                CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) providedValueArr, content, $composer2, ProvidedValue.$stable | (($dirty2 >> 3) & 112));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                throw new IllegalStateException("Koin context has not been initialized in rememberKoinApplication".toString());
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda14
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return KoinApplicationKt.KoinMultiplatformApplication$lambda$2(config, logLevel2, content, $changed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    @FunctionKeyMeta(endOffset = 9784, key = 1560007908, startOffset = 9400)
    @Deprecated(message = "KoinContext is not needed anymore. This can be removed. Compose Koin context is setup with StartKoin()")
    public static final void KoinContext(Koin koin, final Function2<? super Composer, ? super Integer, Unit> content, Composer $composer, final int $changed, final int i) {
        final Koin koin2;
        int i2;
        Intrinsics.checkNotNullParameter(content, "content");
        Composer $composer2 = $composer.startRestartGroup(1560007908);
        ComposerKt.sourceInformation($composer2, "C(KoinContext)N(koin,content)257@9604L27,258@9724L25,256@9505L277:KoinApplication.kt#8jjlyv");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            if ((i & 1) == 0) {
                koin2 = koin;
                if ($composer2.changedInstance(koin2)) {
                    i2 = 4;
                }
                $dirty |= i2;
            } else {
                koin2 = koin;
            }
            i2 = 2;
            $dirty |= i2;
        } else {
            koin2 = koin;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changedInstance(content) ? 32 : 16;
        }
        if ($composer2.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            $composer2.startDefaults();
            ComposerKt.sourceInformation($composer2, "253@9434L25");
            if (($changed & 1) != 0 && !$composer2.getDefaultsInvalid()) {
                $composer2.skipToGroupEnd();
                if ((i & 1) != 0) {
                    $dirty &= -15;
                }
            } else if ((i & 1) != 0) {
                koin2 = KoinApplication_androidKt.retrieveDefaultInstance($composer2, 0);
                $dirty &= -15;
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1560007908, $dirty, -1, "org.koin.compose.KoinContext (KoinApplication.kt:255)");
            }
            ProvidedValue[] providedValueArr = new ProvidedValue[2];
            ProvidableCompositionLocal<ComposeContextWrapper<Koin>> providableCompositionLocal = LocalKoinApplicationContext;
            ComposerKt.sourceInformationMarkerStart($composer2, 224019839, "CC(remember):KoinApplication.kt#9igjgp");
            Object it$iv = $composer2.rememberedValue();
            if (it$iv == Composer.INSTANCE.getEmpty()) {
                Object value$iv = new Function0() { // from class: org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda15
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return KoinApplicationKt.getDefaultKoinContext();
                    }
                };
                $composer2.updateRememberedValue(value$iv);
                it$iv = value$iv;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            providedValueArr[0] = providableCompositionLocal.provides(new ComposeContextWrapper<>(koin2, (Function0) it$iv));
            ProvidableCompositionLocal<ComposeContextWrapper<Scope>> providableCompositionLocal2 = LocalKoinScopeContext;
            Scope rootScope = koin2.getScopeRegistry().getRootScope();
            ComposerKt.sourceInformationMarkerStart($composer2, 224023677, "CC(remember):KoinApplication.kt#9igjgp");
            Object it$iv2 = $composer2.rememberedValue();
            if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                Object value$iv2 = new Function0() { // from class: org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda16
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return KoinApplicationKt.getDefaultRootScope();
                    }
                };
                $composer2.updateRememberedValue(value$iv2);
                it$iv2 = value$iv2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            providedValueArr[1] = providableCompositionLocal2.provides(new ComposeContextWrapper<>(rootScope, (Function0) it$iv2));
            CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) providedValueArr, content, $composer2, ProvidedValue.$stable | ($dirty & 112));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda17
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return KoinApplicationKt.KoinContext$lambda$2(koin2, content, $changed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00fd  */
    @FunctionKeyMeta(endOffset = 10885, key = -1672936023, startOffset = 10486)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void KoinIsolatedContext(final KoinApplication context, final Function2<? super Composer, ? super Integer, Unit> content, Composer $composer, final int $changed) {
        char c;
        char c2;
        boolean invalid$iv;
        Object it$iv;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(content, "content");
        Composer $composer2 = $composer.startRestartGroup(-1672936023);
        ComposerKt.sourceInformation($composer2, "C(KoinIsolatedContext)N(context,content)287@10692L15,288@10809L40,286@10585L298:KoinApplication.kt#8jjlyv");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changedInstance(context) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changedInstance(content) ? 32 : 16;
        }
        if ($composer2.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1672936023, $dirty, -1, "org.koin.compose.KoinIsolatedContext (KoinApplication.kt:285)");
            }
            ProvidedValue[] providedValueArr = new ProvidedValue[2];
            ProvidableCompositionLocal<ComposeContextWrapper<Koin>> providableCompositionLocal = LocalKoinApplicationContext;
            Koin koin = context.getKoin();
            ComposerKt.sourceInformationMarkerStart($composer2, -1373742792, "CC(remember):KoinApplication.kt#9igjgp");
            boolean invalid$iv2 = $composer2.changedInstance(context);
            Object it$iv2 = $composer2.rememberedValue();
            if (invalid$iv2) {
                c = 0;
            } else {
                c = 0;
                if (it$iv2 != Composer.INSTANCE.getEmpty()) {
                    c2 = 1;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                providedValueArr[c] = providableCompositionLocal.provides(new ComposeContextWrapper<>(koin, (Function0) it$iv2));
                ProvidableCompositionLocal<ComposeContextWrapper<Scope>> providableCompositionLocal2 = LocalKoinScopeContext;
                Scope rootScope = context.getKoin().getScopeRegistry().getRootScope();
                ComposerKt.sourceInformationMarkerStart($composer2, -1373739023, "CC(remember):KoinApplication.kt#9igjgp");
                invalid$iv = $composer2.changedInstance(context);
                it$iv = $composer2.rememberedValue();
                if (!invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                    Object value$iv = new Function0() { // from class: org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda19
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return KoinApplicationKt.KoinIsolatedContext$lambda$1$0(context);
                        }
                    };
                    $composer2.updateRememberedValue(value$iv);
                    it$iv = value$iv;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                providedValueArr[c2] = providableCompositionLocal2.provides(new ComposeContextWrapper<>(rootScope, (Function0) it$iv));
                CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) providedValueArr, content, $composer2, ProvidedValue.$stable | ($dirty & 112));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
            c2 = 1;
            Object value$iv2 = new Function0() { // from class: org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda18
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return context.getKoin();
                }
            };
            $composer2.updateRememberedValue(value$iv2);
            it$iv2 = value$iv2;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            providedValueArr[c] = providableCompositionLocal.provides(new ComposeContextWrapper<>(koin, (Function0) it$iv2));
            ProvidableCompositionLocal<ComposeContextWrapper<Scope>> providableCompositionLocal22 = LocalKoinScopeContext;
            Scope rootScope2 = context.getKoin().getScopeRegistry().getRootScope();
            ComposerKt.sourceInformationMarkerStart($composer2, -1373739023, "CC(remember):KoinApplication.kt#9igjgp");
            invalid$iv = $composer2.changedInstance(context);
            it$iv = $composer2.rememberedValue();
            if (!invalid$iv) {
                Object value$iv3 = new Function0() { // from class: org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda19
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return KoinApplicationKt.KoinIsolatedContext$lambda$1$0(context);
                    }
                };
                $composer2.updateRememberedValue(value$iv3);
                it$iv = value$iv3;
                ComposerKt.sourceInformationMarkerEnd($composer2);
                providedValueArr[c2] = providableCompositionLocal22.provides(new ComposeContextWrapper<>(rootScope2, (Function0) it$iv));
                CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) providedValueArr, content, $composer2, ProvidedValue.$stable | ($dirty & 112));
                if (ComposerKt.isTraceInProgress()) {
                }
            }
        } else {
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda20
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return KoinApplicationKt.KoinIsolatedContext$lambda$2(context, content, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Scope KoinIsolatedContext$lambda$1$0(KoinApplication $context) {
        return $context.getKoin().getScopeRegistry().getRootScope();
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0102  */
    @FunctionKeyMeta(endOffset = 11646, key = -277465461, startOffset = 11195)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void KoinApplicationPreview(final Function1<? super KoinApplication, Unit> application, final Function2<? super Composer, ? super Integer, Unit> content, Composer $composer, final int $changed) {
        char c;
        char c2;
        boolean invalid$iv;
        Object it$iv;
        Intrinsics.checkNotNullParameter(application, "application");
        Intrinsics.checkNotNullParameter(content, "content");
        Composer $composer2 = $composer.startRestartGroup(-277465461);
        ComposerKt.sourceInformation($composer2, "C(KoinApplicationPreview)N(application,content)308@11458L14,309@11573L38,307@11351L293:KoinApplication.kt#8jjlyv");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changedInstance(application) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changedInstance(content) ? 32 : 16;
        }
        if ($composer2.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-277465461, $dirty, -1, "org.koin.compose.KoinApplicationPreview (KoinApplication.kt:305)");
            }
            final KoinApplication context = org.koin.dsl.KoinApplicationKt.koinApplication(application);
            ProvidedValue[] providedValueArr = new ProvidedValue[2];
            ProvidableCompositionLocal<ComposeContextWrapper<Koin>> providableCompositionLocal = LocalKoinApplicationContext;
            Koin koin = context.getKoin();
            ComposerKt.sourceInformationMarkerStart($composer2, -356327239, "CC(remember):KoinApplication.kt#9igjgp");
            boolean invalid$iv2 = $composer2.changedInstance(context);
            Object it$iv2 = $composer2.rememberedValue();
            if (invalid$iv2) {
                c = 0;
            } else {
                c = 0;
                if (it$iv2 != Composer.INSTANCE.getEmpty()) {
                    c2 = 1;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                providedValueArr[c] = providableCompositionLocal.provides(new ComposeContextWrapper<>(koin, (Function0) it$iv2));
                ProvidableCompositionLocal<ComposeContextWrapper<Scope>> providableCompositionLocal2 = LocalKoinScopeContext;
                Scope rootScope = context.getKoin().getScopeRegistry().getRootScope();
                ComposerKt.sourceInformationMarkerStart($composer2, -356323535, "CC(remember):KoinApplication.kt#9igjgp");
                invalid$iv = $composer2.changedInstance(context);
                it$iv = $composer2.rememberedValue();
                if (!invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                    Object value$iv = new Function0() { // from class: org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda5
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return KoinApplicationKt.KoinApplicationPreview$lambda$1$0(context);
                        }
                    };
                    $composer2.updateRememberedValue(value$iv);
                    it$iv = value$iv;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                providedValueArr[c2] = providableCompositionLocal2.provides(new ComposeContextWrapper<>(rootScope, (Function0) it$iv));
                CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) providedValueArr, content, $composer2, ProvidedValue.$stable | ($dirty & 112));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
            c2 = 1;
            Object value$iv2 = new Function0() { // from class: org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return context.getKoin();
                }
            };
            $composer2.updateRememberedValue(value$iv2);
            it$iv2 = value$iv2;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            providedValueArr[c] = providableCompositionLocal.provides(new ComposeContextWrapper<>(koin, (Function0) it$iv2));
            ProvidableCompositionLocal<ComposeContextWrapper<Scope>> providableCompositionLocal22 = LocalKoinScopeContext;
            Scope rootScope2 = context.getKoin().getScopeRegistry().getRootScope();
            ComposerKt.sourceInformationMarkerStart($composer2, -356323535, "CC(remember):KoinApplication.kt#9igjgp");
            invalid$iv = $composer2.changedInstance(context);
            it$iv = $composer2.rememberedValue();
            if (!invalid$iv) {
                Object value$iv3 = new Function0() { // from class: org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return KoinApplicationKt.KoinApplicationPreview$lambda$1$0(context);
                    }
                };
                $composer2.updateRememberedValue(value$iv3);
                it$iv = value$iv3;
                ComposerKt.sourceInformationMarkerEnd($composer2);
                providedValueArr[c2] = providableCompositionLocal22.provides(new ComposeContextWrapper<>(rootScope2, (Function0) it$iv));
                CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) providedValueArr, content, $composer2, ProvidedValue.$stable | ($dirty & 112));
                if (ComposerKt.isTraceInProgress()) {
                }
            }
        } else {
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return KoinApplicationKt.KoinApplicationPreview$lambda$2(application, content, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Scope KoinApplicationPreview$lambda$1$0(KoinApplication $context) {
        return $context.getKoin().getScopeRegistry().getRootScope();
    }
}
