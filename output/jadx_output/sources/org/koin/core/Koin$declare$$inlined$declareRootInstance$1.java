package org.koin.core;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.scope.Scope;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: InstanceRegistry.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 176)
public final class Koin$declare$$inlined$declareRootInstance$1<T> implements Function2<Scope, ParametersHolder, T> {
    final /* synthetic */ Object $instance;

    public Koin$declare$$inlined$declareRootInstance$1(Object obj) {
        this.$instance = obj;
    }

    @Override // kotlin.jvm.functions.Function2
    public final T invoke(Scope _createDefinition, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(_createDefinition, "$this$_createDefinition");
        Intrinsics.checkNotNullParameter(it, "it");
        return (T) this.$instance;
    }
}
