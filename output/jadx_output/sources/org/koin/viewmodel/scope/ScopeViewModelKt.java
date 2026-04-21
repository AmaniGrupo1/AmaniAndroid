package org.koin.viewmodel.scope;

import androidx.lifecycle.ViewModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.Koin;
import org.koin.core.annotation.KoinExperimentalAPI;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.component.KoinScopeComponentKt;
import org.koin.core.option.KoinOptionKt;
import org.koin.core.scope.Scope;
import org.koin.viewmodel.factory.ViewModelScopeAutoCloseable;

/* JADX INFO: compiled from: ScopeViewModel.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0007¨\u0006\u0003"}, d2 = {"viewModelScope", "Lorg/koin/core/scope/Scope;", "Lorg/koin/core/component/KoinScopeComponent;", "koin-core-viewmodel_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class ScopeViewModelKt {
    /* JADX WARN: Multi-variable type inference failed */
    @KoinExperimentalAPI
    public static final Scope viewModelScope(KoinScopeComponent koinScopeComponent) {
        Intrinsics.checkNotNullParameter(koinScopeComponent, "<this>");
        if (!(koinScopeComponent instanceof ViewModel)) {
            throw new IllegalStateException((koinScopeComponent + " should implement ViewModel() class").toString());
        }
        Koin koin = koinScopeComponent.getKoin();
        if (KoinOptionKt.hasViewModelScopeFactory(koin.getOptionRegistry())) {
            koin.getLogger().warn(Reflection.getOrCreateKotlinClass(koinScopeComponent.getClass()) + " is using viewModelScope() while you are using viewModelScopeFactory() option. Remove viewModelScope() usage to use ViewModel constructor injection with automatic scope creation.");
        }
        Scope vmScope = KoinScopeComponentKt.createScope$default(koinScopeComponent, null, koinScopeComponent, ViewModelScopeArchetypeKt.getViewModelScopeArchetype(), 1, null);
        ((ViewModel) koinScopeComponent).addCloseable(new ViewModelScopeAutoCloseable(vmScope.getId(), vmScope.get_koin()));
        return vmScope;
    }
}
