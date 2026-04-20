package org.koin.viewmodel.scope;

import androidx.lifecycle.ViewModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import org.koin.core.qualifier.TypeQualifier;

/* JADX INFO: compiled from: ViewModelScopeArchetype.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0011\u0010\u0000\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"ViewModelScopeArchetype", "Lorg/koin/core/qualifier/TypeQualifier;", "getViewModelScopeArchetype", "()Lorg/koin/core/qualifier/TypeQualifier;", "koin-core-viewmodel_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class ViewModelScopeArchetypeKt {
    private static final TypeQualifier ViewModelScopeArchetype = new TypeQualifier(Reflection.getOrCreateKotlinClass(ViewModel.class));

    public static final TypeQualifier getViewModelScopeArchetype() {
        return ViewModelScopeArchetype;
    }
}
