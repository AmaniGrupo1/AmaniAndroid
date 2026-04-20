package org.koin.viewmodel.scope;

import androidx.lifecycle.ViewModel;
import kotlin.Deprecated;
import kotlin.Metadata;
import org.koin.core.Koin;
import org.koin.core.annotation.KoinExperimentalAPI;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.scope.Scope;

/* JADX INFO: compiled from: ScopeViewModel.kt */
/* JADX INFO: loaded from: classes23.dex */
@KoinExperimentalAPI
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\b'\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\t\u001a\u00020\nH\u0017R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lorg/koin/viewmodel/scope/ScopeViewModel;", "Landroidx/lifecycle/ViewModel;", "Lorg/koin/core/component/KoinScopeComponent;", "<init>", "()V", "scope", "Lorg/koin/core/scope/Scope;", "getScope", "()Lorg/koin/core/scope/Scope;", "onCloseScope", "", "koin-core-viewmodel_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class ScopeViewModel extends ViewModel implements KoinScopeComponent {
    private final Scope scope = ScopeViewModelKt.viewModelScope(this);

    @Override // org.koin.core.component.KoinComponent
    public /* bridge */ Koin getKoin() {
        return super.getKoin();
    }

    @Override // org.koin.core.component.KoinScopeComponent
    public Scope getScope() {
        return this.scope;
    }

    @Deprecated(message = "Not used anymore. Now close scope automatically with ViewModelScopeAutoCloseable")
    public void onCloseScope() {
    }
}
