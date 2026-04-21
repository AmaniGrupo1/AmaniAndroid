package org.koin.compose.scope;

import androidx.compose.runtime.RememberObserver;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.annotation.KoinExperimentalAPI;
import org.koin.core.scope.Scope;

/* JADX INFO: compiled from: CompositionKoinScopeLoader.kt */
/* JADX INFO: loaded from: classes23.dex */
@KoinExperimentalAPI
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\b\u001a\u00020\tH\u0016J\b\u0010\n\u001a\u00020\tH\u0016J\b\u0010\u000b\u001a\u00020\tH\u0016J\b\u0010\f\u001a\u00020\tH\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\r"}, d2 = {"Lorg/koin/compose/scope/CompositionKoinScopeLoader;", "Landroidx/compose/runtime/RememberObserver;", "scope", "Lorg/koin/core/scope/Scope;", "<init>", "(Lorg/koin/core/scope/Scope;)V", "getScope", "()Lorg/koin/core/scope/Scope;", "onRemembered", "", "onForgotten", "onAbandoned", "close", "koin-compose_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CompositionKoinScopeLoader implements RememberObserver {
    public static final int $stable = 8;
    private final Scope scope;

    public CompositionKoinScopeLoader(Scope scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.scope = scope;
    }

    public final Scope getScope() {
        return this.scope;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onRemembered() {
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onForgotten() {
        this.scope.getLogger().debug("CompositionKoinScopeLoader onForgotten: '" + this.scope.getId() + "' (" + this + ')');
        close();
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onAbandoned() {
        this.scope.getLogger().debug("CompositionKoinScopeLoader onAbandoned: '" + this.scope.getId() + "' (" + this + ')');
        close();
    }

    private final void close() {
        if (!this.scope.getIsRoot() && !this.scope.get_closed()) {
            this.scope.getLogger().debug("CompositionKoinScopeLoader close scope: '" + this.scope.getId() + "' (" + this + ')');
            this.scope.close();
        }
    }
}
