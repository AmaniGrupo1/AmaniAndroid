package org.koin.viewmodel.scope;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.annotation.KoinExperimentalAPI;
import org.koin.core.module.Module;
import org.koin.core.qualifier.TypeQualifier;
import org.koin.dsl.ScopeDSL;

/* JADX INFO: compiled from: ViewModelScopeArchetypeDSL.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a%\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0017\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\u0002\b\u0006H\u0007¨\u0006\u0007"}, d2 = {"viewModelScope", "", "Lorg/koin/core/module/Module;", "scopeSet", "Lkotlin/Function1;", "Lorg/koin/dsl/ScopeDSL;", "Lkotlin/ExtensionFunctionType;", "koin-core-viewmodel_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class ViewModelScopeArchetypeDSLKt {
    @KoinExperimentalAPI
    public static final void viewModelScope(Module $this$viewModelScope, Function1<? super ScopeDSL, Unit> scopeSet) {
        Intrinsics.checkNotNullParameter($this$viewModelScope, "<this>");
        Intrinsics.checkNotNullParameter(scopeSet, "scopeSet");
        TypeQualifier qualifier = ViewModelScopeArchetypeKt.getViewModelScopeArchetype();
        scopeSet.invoke(new ScopeDSL(qualifier, $this$viewModelScope));
    }
}
