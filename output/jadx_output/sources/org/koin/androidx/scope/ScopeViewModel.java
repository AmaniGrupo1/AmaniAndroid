package org.koin.androidx.scope;

import androidx.lifecycle.ViewModel;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import org.koin.core.Koin;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.scope.Scope;
import org.koin.viewmodel.scope.ScopeViewModelKt;

/* JADX INFO: compiled from: ScopeViewModel.kt */
/* JADX INFO: loaded from: classes23.dex */
@Deprecated(message = "ScopeViewModel has been moved to org.koin.viewmodel.scope.ScopeViewModel (koin-core-viewmodel)", replaceWith = @ReplaceWith(expression = "ScopeViewModel()", imports = {"org.koin.viewmodel.scope"}))
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\b'\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\nH\u0014R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\f"}, d2 = {"Lorg/koin/androidx/scope/ScopeViewModel;", "Landroidx/lifecycle/ViewModel;", "Lorg/koin/core/component/KoinScopeComponent;", "<init>", "()V", "scope", "Lorg/koin/core/scope/Scope;", "getScope", "()Lorg/koin/core/scope/Scope;", "onCloseScope", "", "onCleared", "koin-android_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
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

    public void onCloseScope() {
    }

    @Override // androidx.lifecycle.ViewModel
    protected void onCleared() {
        onCloseScope();
        getScope().close();
        super.onCleared();
    }
}
