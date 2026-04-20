package org.koin.android.scope;

import android.app.Service;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.core.Koin;
import org.koin.core.component.KoinScopeComponentKt;
import org.koin.core.scope.Scope;

/* JADX INFO: compiled from: ServiceExt.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0002\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00010\u0006*\u00020\u0002\u001a\u0018\u0010\u0007\u001a\u00020\u0001*\u00020\u00022\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tH\u0007\u001a\u000e\u0010\n\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0007¨\u0006\u000b"}, d2 = {"createServiceScope", "Lorg/koin/core/scope/Scope;", "Landroid/app/Service;", "destroyServiceScope", "", "serviceScope", "Lkotlin/Lazy;", "createScope", "source", "", "getScopeOrNull", "koin-android_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class ServiceExtKt {
    public static final Scope createServiceScope(Service $this$createServiceScope) {
        Intrinsics.checkNotNullParameter($this$createServiceScope, "<this>");
        if (!($this$createServiceScope instanceof AndroidScopeComponent)) {
            throw new IllegalStateException("Service should implement AndroidScopeComponent".toString());
        }
        Koin koin = ComponentCallbackExtKt.getKoin($this$createServiceScope);
        Scope scope = koin.getScopeOrNull(KoinScopeComponentKt.getScopeId($this$createServiceScope));
        return scope == null ? Koin.createScope$default(koin, KoinScopeComponentKt.getScopeId($this$createServiceScope), KoinScopeComponentKt.getScopeName($this$createServiceScope), $this$createServiceScope, null, 8, null) : scope;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void destroyServiceScope(Service service) {
        Intrinsics.checkNotNullParameter(service, "<this>");
        if (!(service instanceof AndroidScopeComponent)) {
            throw new IllegalStateException("Service should implement AndroidScopeComponent".toString());
        }
        ((AndroidScopeComponent) service).getScope().close();
    }

    public static final Lazy<Scope> serviceScope(final Service $this$serviceScope) {
        Intrinsics.checkNotNullParameter($this$serviceScope, "<this>");
        return LazyKt.lazy(new Function0() { // from class: org.koin.android.scope.ServiceExtKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceExtKt.createServiceScope($this$serviceScope);
            }
        });
    }

    public static final Scope createScope(Service $this$createScope, Object source) {
        Intrinsics.checkNotNullParameter($this$createScope, "<this>");
        return Koin.createScope$default(ComponentCallbackExtKt.getKoin($this$createScope), KoinScopeComponentKt.getScopeId($this$createScope), KoinScopeComponentKt.getScopeName($this$createScope), source, null, 8, null);
    }

    public static /* synthetic */ Scope createScope$default(Service service, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            obj = null;
        }
        return createScope(service, obj);
    }

    public static final Scope getScopeOrNull(Service $this$getScopeOrNull) {
        Intrinsics.checkNotNullParameter($this$getScopeOrNull, "<this>");
        return ComponentCallbackExtKt.getKoin($this$getScopeOrNull).getScopeOrNull(KoinScopeComponentKt.getScopeId($this$getScopeOrNull));
    }
}
