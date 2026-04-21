package org.koin.compose.scope;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.internal.FunctionKeyMeta;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.koin.compose.ComposeContextWrapper;
import org.koin.compose.KoinApplicationKt;
import org.koin.core.annotation.KoinDelicateAPI;
import org.koin.core.annotation.KoinExperimentalAPI;
import org.koin.core.scope.Scope;

/* JADX INFO: compiled from: UnboundKoinScope.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a.\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0013\b\b\u0010\u0004\u001a\r\u0012\u0004\u0012\u00020\u00010\u0005¢\u0006\u0002\b\u0006H\u0087\bø\u0001\u0000¢\u0006\u0002\u0010\u0007\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\b"}, d2 = {"UnboundKoinScope", "", "scope", "Lorg/koin/core/scope/Scope;", "content", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "(Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "koin-compose_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class UnboundKoinScopeKt {
    @FunctionKeyMeta(endOffset = 2891, key = 1758610032, startOffset = 2669)
    @KoinDelicateAPI
    @KoinExperimentalAPI
    public static final void UnboundKoinScope(Scope scope, final Function2<? super Composer, ? super Integer, Unit> content, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(content, "content");
        ComposerKt.sourceInformationMarkerStart($composer, 1758610032, "CC(UnboundKoinScope)N(scope,content)71@2864L25,69@2763L126:UnboundKoinScope.kt#4cyfz7");
        CompositionLocalKt.CompositionLocalProvider(KoinApplicationKt.getLocalKoinScopeContext().provides(new ComposeContextWrapper<>(scope, null, 2, null)), ComposableLambdaKt.rememberComposableLambda(-1046812880, true, new Function2<Composer, Integer, Unit>() { // from class: org.koin.compose.scope.UnboundKoinScopeKt.UnboundKoinScope.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                invoke(composer, num.intValue());
                return Unit.INSTANCE;
            }

            @FunctionKeyMeta(endOffset = 2889, key = -1046812880, startOffset = 2864)
            public final void invoke(Composer $composer2, int $changed2) {
                ComposerKt.sourceInformation($composer2, "C72@2874L9:UnboundKoinScope.kt#4cyfz7");
                if (!$composer2.shouldExecute(($changed2 & 3) != 2, $changed2 & 1)) {
                    $composer2.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1046812880, $changed2, -1, "org.koin.compose.scope.UnboundKoinScope.<anonymous> (UnboundKoinScope.kt:72)");
                }
                content.invoke($composer2, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        }, $composer, 54), $composer, ProvidedValue.$stable | 48);
        ComposerKt.sourceInformationMarkerEnd($composer);
    }
}
