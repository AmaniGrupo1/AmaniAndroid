package org.koin.viewmodel.factory;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;

/* JADX INFO: compiled from: ViewModelScopeAutoCloseable.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\b\u0007\u0018\u00002\u00060\u0001j\u0002`\u0002B\u001b\u0012\n\u0010\u0003\u001a\u00060\u0004j\u0002`\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\b\u0010\u000e\u001a\u00020\u000fH\u0016R\u0015\u0010\u0003\u001a\u00060\u0004j\u0002`\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Lorg/koin/viewmodel/factory/ViewModelScopeAutoCloseable;", "Ljava/lang/AutoCloseable;", "Lkotlin/AutoCloseable;", "scopeId", "", "Lorg/koin/core/scope/ScopeID;", "koin", "Lorg/koin/core/Koin;", "<init>", "(Ljava/lang/String;Lorg/koin/core/Koin;)V", "getScopeId", "()Ljava/lang/String;", "getKoin", "()Lorg/koin/core/Koin;", "close", "", "koin-core-viewmodel_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ViewModelScopeAutoCloseable implements AutoCloseable {
    private final Koin koin;
    private final String scopeId;

    public ViewModelScopeAutoCloseable(String scopeId, Koin koin) {
        Intrinsics.checkNotNullParameter(scopeId, "scopeId");
        Intrinsics.checkNotNullParameter(koin, "koin");
        this.scopeId = scopeId;
        this.koin = koin;
    }

    public final Koin getKoin() {
        return this.koin;
    }

    public final String getScopeId() {
        return this.scopeId;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.koin.deleteScope(this.scopeId);
    }
}
