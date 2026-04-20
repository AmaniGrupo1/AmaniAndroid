package org.koin.compose.scope;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.FunctionKeyMeta;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.annotation.KoinExperimentalAPI;
import org.koin.core.scope.Scope;

/* JADX INFO: compiled from: RememberScopes.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0015\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"rememberKoinScope", "Lorg/koin/core/scope/Scope;", "scope", "(Lorg/koin/core/scope/Scope;Landroidx/compose/runtime/Composer;I)Lorg/koin/core/scope/Scope;", "koin-compose_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class RememberScopesKt {
    @FunctionKeyMeta(endOffset = 1427, key = -424940701, startOffset = 1272)
    @KoinExperimentalAPI
    public static final Scope rememberKoinScope(Scope scope, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        ComposerKt.sourceInformationMarkerStart($composer, -424940701, "C(rememberKoinScope)N(scope)39@1335L65:RememberScopes.kt#4cyfz7");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-424940701, $changed, -1, "org.koin.compose.scope.rememberKoinScope (RememberScopes.kt:38)");
        }
        ComposerKt.sourceInformationMarkerStart($composer, -346118460, "CC(remember):RememberScopes.kt#9igjgp");
        boolean invalid$iv = $composer.changed(scope);
        Object it$iv = $composer.rememberedValue();
        if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
            Object value$iv = new CompositionKoinScopeLoader(scope);
            $composer.updateRememberedValue(value$iv);
            it$iv = value$iv;
        }
        CompositionKoinScopeLoader wrapper = (CompositionKoinScopeLoader) it$iv;
        ComposerKt.sourceInformationMarkerEnd($composer);
        Scope scope2 = wrapper.getScope();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return scope2;
    }
}
