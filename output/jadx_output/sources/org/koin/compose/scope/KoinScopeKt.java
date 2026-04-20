package org.koin.compose.scope;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.internal.FunctionKeyMeta;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.compose.ComposeContextWrapper;
import org.koin.compose.KoinApplicationKt;
import org.koin.core.Koin;
import org.koin.core.annotation.KoinExperimentalAPI;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.qualifier.TypeQualifier;
import org.koin.core.scope.Scope;

/* JADX INFO: compiled from: KoinScope.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000@\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a9\u0010\u0000\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u00062\u0011\u0010\u0007\u001a\r\u0012\u0004\u0012\u00020\u00010\b¢\u0006\u0002\b\tH\u0007¢\u0006\u0002\u0010\n\u001a>\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u000b\u0018\u0001*\u00020\f2\n\u0010\r\u001a\u00060\u000ej\u0002`\u000f2\u0013\b\b\u0010\u0007\u001a\r\u0012\u0004\u0012\u00020\u00010\b¢\u0006\u0002\b\tH\u0087\bø\u0001\u0000¢\u0006\u0002\u0010\u0010\u001a:\u0010\u0000\u001a\u00020\u00012\n\u0010\r\u001a\u00060\u000ej\u0002`\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0013\b\b\u0010\u0007\u001a\r\u0012\u0004\u0012\u00020\u00010\b¢\u0006\u0002\b\tH\u0087\bø\u0001\u0000¢\u0006\u0002\u0010\u0013\u001a(\u0010\u0014\u001a\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u00052\u0011\u0010\u0007\u001a\r\u0012\u0004\u0012\u00020\u00010\b¢\u0006\u0002\b\tH\u0001¢\u0006\u0002\u0010\u0016\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0017"}, d2 = {"KoinScope", "", "scopeDefinition", "Lkotlin/Function1;", "Lorg/koin/core/Koin;", "Lorg/koin/core/scope/Scope;", "Lkotlin/ExtensionFunctionType;", "content", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", ExifInterface.GPS_DIRECTION_TRUE, "", "scopeID", "", "Lorg/koin/core/scope/ScopeID;", "(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "scopeQualifier", "Lorg/koin/core/qualifier/Qualifier;", "(Ljava/lang/String;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "OnKoinScope", "scope", "(Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "koin-compose_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class KoinScopeKt {
    static final Unit KoinScope$lambda$0(Function1 function1, Function2 function2, int i, Composer composer, int i2) {
        KoinScope((Function1<? super Koin, Scope>) function1, (Function2<? super Composer, ? super Integer, Unit>) function2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit OnKoinScope$lambda$1(Scope scope, Function2 function2, int i, Composer composer, int i2) {
        OnKoinScope(scope, function2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    @FunctionKeyMeta(endOffset = 1519, key = -264394213, startOffset = 1349)
    @KoinExperimentalAPI
    public static final void KoinScope(final Function1<? super Koin, Scope> scopeDefinition, final Function2<? super Composer, ? super Integer, Unit> content, Composer $composer, final int $changed) {
        Intrinsics.checkNotNullParameter(scopeDefinition, "scopeDefinition");
        Intrinsics.checkNotNullParameter(content, "content");
        Composer $composer2 = $composer.startRestartGroup(-264394213);
        ComposerKt.sourceInformation($composer2, "C(KoinScope)N(scopeDefinition,content)44@1475L9,45@1490L27:KoinScope.kt#4cyfz7");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changedInstance(scopeDefinition) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changedInstance(content) ? 32 : 16;
        }
        if (!$composer2.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-264394213, $dirty, -1, "org.koin.compose.scope.KoinScope (KoinScope.kt:43)");
            }
            Scope scope = scopeDefinition.invoke(KoinApplicationKt.getKoin($composer2, 0));
            OnKoinScope(scope, content, $composer2, $dirty & 112);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.koin.compose.scope.KoinScopeKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return KoinScopeKt.KoinScope$lambda$0(scopeDefinition, content, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    @FunctionKeyMeta(endOffset = 1932, key = -1487271735, startOffset = 1740)
    @KoinExperimentalAPI
    public static final /* synthetic */ <T> void KoinScope(String scopeID, Function2<? super Composer, ? super Integer, Unit> content, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(scopeID, "scopeID");
        Intrinsics.checkNotNullParameter(content, "content");
        ComposerKt.sourceInformationMarkerStart($composer, -1487271735, "CC(KoinScope)N(scopeID,content)63@1860L9,64@1903L27:KoinScope.kt#4cyfz7");
        Koin this_$iv = KoinApplicationKt.getKoin($composer, 0);
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        TypeQualifier qualifier$iv = new TypeQualifier(Reflection.getOrCreateKotlinClass(Object.class));
        Scope scope = this_$iv.getScopeRegistry().getScopeOrNull(scopeID);
        if (scope == null) {
            scope = Koin.createScope$default(this_$iv, scopeID, qualifier$iv, null, null, 12, null);
        }
        OnKoinScope(scope, content, $composer, $changed & 112);
        ComposerKt.sourceInformationMarkerEnd($composer);
    }

    @FunctionKeyMeta(endOffset = 2396, key = -362301145, startOffset = 2178)
    @KoinExperimentalAPI
    public static final void KoinScope(String scopeID, Qualifier scopeQualifier, Function2<? super Composer, ? super Integer, Unit> content, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(scopeID, "scopeID");
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Intrinsics.checkNotNullParameter(content, "content");
        ComposerKt.sourceInformationMarkerStart($composer, -362301145, "CC(KoinScope)N(scopeID,scopeQualifier,content)84@2311L9,85@2367L27:KoinScope.kt#4cyfz7");
        Scope scope = Koin.getOrCreateScope$default(KoinApplicationKt.getKoin($composer, 0), scopeID, scopeQualifier, null, 4, null);
        OnKoinScope(scope, content, $composer, ($changed >> 3) & 112);
        ComposerKt.sourceInformationMarkerEnd($composer);
    }

    @FunctionKeyMeta(endOffset = 2711, key = -1631542729, startOffset = 2485)
    @KoinExperimentalAPI
    public static final void OnKoinScope(final Scope scope, final Function2<? super Composer, ? super Integer, Unit> content, Composer $composer, final int $changed) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(content, "content");
        Composer $composer2 = $composer.startRestartGroup(-1631542729);
        ComposerKt.sourceInformation($composer2, "C(OnKoinScope)N(scope,content)93@2554L24,96@2684L25,94@2583L126:KoinScope.kt#4cyfz7");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changedInstance(scope) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changedInstance(content) ? 32 : 16;
        }
        if (!$composer2.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1631542729, $dirty, -1, "org.koin.compose.scope.OnKoinScope (KoinScope.kt:92)");
            }
            RememberScopesKt.rememberKoinScope(scope, $composer2, $dirty & 14);
            CompositionLocalKt.CompositionLocalProvider(KoinApplicationKt.getLocalKoinScopeContext().provides(new ComposeContextWrapper<>(scope, null, 2, null)), ComposableLambdaKt.rememberComposableLambda(164259575, true, new Function2() { // from class: org.koin.compose.scope.KoinScopeKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return KoinScopeKt.OnKoinScope$lambda$0(content, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer2, 54), $composer2, ProvidedValue.$stable | 48);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.koin.compose.scope.KoinScopeKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return KoinScopeKt.OnKoinScope$lambda$1(scope, content, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    @FunctionKeyMeta(endOffset = 2709, key = 164259575, startOffset = 2684)
    static final Unit OnKoinScope$lambda$0(Function2 $content, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C97@2694L9:KoinScope.kt#4cyfz7");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(164259575, $changed, -1, "org.koin.compose.scope.OnKoinScope.<anonymous> (KoinScope.kt:97)");
            }
            $content.invoke($composer, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }
}
