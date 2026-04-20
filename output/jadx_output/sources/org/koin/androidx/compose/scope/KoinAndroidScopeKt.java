package org.koin.androidx.compose.scope;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.koin.android.scope.AndroidScopeComponent;
import org.koin.compose.ComposeContextWrapper;
import org.koin.compose.KoinApplicationKt;
import org.koin.core.scope.Scope;

/* JADX INFO: compiled from: KoinAndroidScope.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a \u0010\u0000\u001a\u00020\u00012\u0011\u0010\u0002\u001a\r\u0012\u0004\u0012\u00020\u00010\u0003¢\u0006\u0002\b\u0004H\u0007¢\u0006\u0002\u0010\u0005\u001a \u0010\u0006\u001a\u00020\u00012\u0011\u0010\u0002\u001a\r\u0012\u0004\u0012\u00020\u00010\u0003¢\u0006\u0002\b\u0004H\u0007¢\u0006\u0002\u0010\u0005¨\u0006\u0007"}, d2 = {"KoinActivityScope", "", "content", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "KoinFragmentScope", "koin-androidx-compose_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class KoinAndroidScopeKt {
    static final Unit KoinActivityScope$lambda$1(Function2 function2, int i, Composer composer, int i2) {
        KoinActivityScope(function2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit KoinFragmentScope$lambda$1(Function2 function2, int i, Composer composer, int i2) {
        KoinFragmentScope(function2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void KoinActivityScope(final Function2<? super Composer, ? super Integer, Unit> content, Composer $composer, final int $changed) {
        Intrinsics.checkNotNullParameter(content, "content");
        Composer $composer2 = $composer.startRestartGroup(-391667059);
        ComposerKt.sourceInformation($composer2, "C(KoinActivityScope)N(content)31@1144L7,35@1399L25,33@1298L126:KoinAndroidScope.kt#v2qisu");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changedInstance(content) ? 4 : 2;
        }
        if (!$composer2.shouldExecute(($dirty & 3) != 2, $dirty & 1)) {
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-391667059, $dirty, -1, "org.koin.androidx.compose.scope.KoinActivityScope (KoinAndroidScope.kt:30)");
            }
            ProvidableCompositionLocal<Context> localContext = AndroidCompositionLocals_androidKt.getLocalContext();
            ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume = $composer2.consume(localContext);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            AndroidScopeComponent androidScopeComponent = objConsume instanceof AndroidScopeComponent ? (AndroidScopeComponent) objConsume : null;
            Scope scope = androidScopeComponent != null ? androidScopeComponent.getScope() : null;
            if (scope != null) {
                $composer2.startReplaceGroup(1565081040);
                $composer2.endReplaceGroup();
                CompositionLocalKt.CompositionLocalProvider(KoinApplicationKt.getLocalKoinScopeContext().provides(new ComposeContextWrapper<>(scope, null, 2, null)), ComposableLambdaKt.rememberComposableLambda(-1357912243, true, new Function2() { // from class: org.koin.androidx.compose.scope.KoinAndroidScopeKt$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return KoinAndroidScopeKt.KoinActivityScope$lambda$0(content, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, $composer2, 54), $composer2, ProvidedValue.$stable | 48);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                $composer2.startReplaceGroup(1565083117);
                ComposerKt.sourceInformation($composer2, "32@1235L7");
                StringBuilder sbAppend = new StringBuilder().append("Current context ");
                ProvidableCompositionLocal<Context> localContext2 = AndroidCompositionLocals_androidKt.getLocalContext();
                ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
                Object objConsume2 = $composer2.consume(localContext2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                throw new IllegalStateException(sbAppend.append(objConsume2).append(" must implement AndroidScopeComponent interface.").toString().toString());
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.koin.androidx.compose.scope.KoinAndroidScopeKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return KoinAndroidScopeKt.KoinActivityScope$lambda$1(content, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    static final Unit KoinActivityScope$lambda$0(Function2 $content, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C36@1409L9:KoinAndroidScope.kt#v2qisu");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1357912243, $changed, -1, "org.koin.androidx.compose.scope.KoinActivityScope.<anonymous> (KoinAndroidScope.kt:36)");
            }
            $content.invoke($composer, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    public static final void KoinFragmentScope(final Function2<? super Composer, ? super Integer, Unit> content, Composer $composer, final int $changed) {
        Intrinsics.checkNotNullParameter(content, "content");
        Composer $composer2 = $composer.startRestartGroup(-617235796);
        ComposerKt.sourceInformation($composer2, "C(KoinFragmentScope)N(content)45@1564L7,49@1819L25,47@1718L126:KoinAndroidScope.kt#v2qisu");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changedInstance(content) ? 4 : 2;
        }
        if (!$composer2.shouldExecute(($dirty & 3) != 2, $dirty & 1)) {
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-617235796, $dirty, -1, "org.koin.androidx.compose.scope.KoinFragmentScope (KoinAndroidScope.kt:44)");
            }
            ProvidableCompositionLocal<Context> localContext = AndroidCompositionLocals_androidKt.getLocalContext();
            ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume = $composer2.consume(localContext);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            AndroidScopeComponent androidScopeComponent = objConsume instanceof AndroidScopeComponent ? (AndroidScopeComponent) objConsume : null;
            Scope scope = androidScopeComponent != null ? androidScopeComponent.getScope() : null;
            if (scope != null) {
                $composer2.startReplaceGroup(-458110417);
                $composer2.endReplaceGroup();
                CompositionLocalKt.CompositionLocalProvider(KoinApplicationKt.getLocalKoinScopeContext().provides(new ComposeContextWrapper<>(scope, null, 2, null)), ComposableLambdaKt.rememberComposableLambda(-1583480980, true, new Function2() { // from class: org.koin.androidx.compose.scope.KoinAndroidScopeKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return KoinAndroidScopeKt.KoinFragmentScope$lambda$0(content, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, $composer2, 54), $composer2, ProvidedValue.$stable | 48);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                $composer2.startReplaceGroup(-458108340);
                ComposerKt.sourceInformation($composer2, "46@1655L7");
                StringBuilder sbAppend = new StringBuilder().append("Current context ");
                ProvidableCompositionLocal<Context> localContext2 = AndroidCompositionLocals_androidKt.getLocalContext();
                ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
                Object objConsume2 = $composer2.consume(localContext2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                throw new IllegalStateException(sbAppend.append(objConsume2).append(" must implement AndroidScopeComponent interface.").toString().toString());
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.koin.androidx.compose.scope.KoinAndroidScopeKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return KoinAndroidScopeKt.KoinFragmentScope$lambda$1(content, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    static final Unit KoinFragmentScope$lambda$0(Function2 $content, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C50@1829L9:KoinAndroidScope.kt#v2qisu");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1583480980, $changed, -1, "org.koin.androidx.compose.scope.KoinFragmentScope.<anonymous> (KoinAndroidScope.kt:50)");
            }
            $content.invoke($composer, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }
}
