package org.koin.core.registry;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.scope.Scope;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: InstanceRegistry.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 176)
public final class InstanceRegistry$scopeDeclaredInstance$definitionFunction$2<T> implements Function2<Scope, ParametersHolder, T> {
    final /* synthetic */ T $instance;

    public InstanceRegistry$scopeDeclaredInstance$definitionFunction$2(T t) {
        this.$instance = t;
    }

    @Override // kotlin.jvm.functions.Function2
    public final T invoke(Scope scope, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(scope, "<this>");
        Intrinsics.checkNotNullParameter(it, "it");
        return this.$instance;
    }
}
