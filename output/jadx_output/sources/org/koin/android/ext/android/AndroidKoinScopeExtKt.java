package org.koin.android.ext.android;

import android.content.ComponentCallbacks;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.koin.android.scope.AndroidScopeComponent;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.context.GlobalContext;
import org.koin.core.scope.Scope;

/* JADX INFO: compiled from: AndroidKoinScopeExt.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0007¨\u0006\u0003"}, d2 = {"getKoinScope", "Lorg/koin/core/scope/Scope;", "Landroid/content/ComponentCallbacks;", "koin-android_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class AndroidKoinScopeExtKt {
    public static final Scope getKoinScope(ComponentCallbacks $this$getKoinScope) {
        Intrinsics.checkNotNullParameter($this$getKoinScope, "<this>");
        return $this$getKoinScope instanceof AndroidScopeComponent ? ((AndroidScopeComponent) $this$getKoinScope).getScope() : $this$getKoinScope instanceof KoinScopeComponent ? ((KoinScopeComponent) $this$getKoinScope).getScope() : $this$getKoinScope instanceof KoinComponent ? ((KoinComponent) $this$getKoinScope).getKoin().getScopeRegistry().getRootScope() : GlobalContext.INSTANCE.get().getScopeRegistry().getRootScope();
    }
}
