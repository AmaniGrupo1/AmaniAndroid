package org.koin.viewmodel.factory;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.koin.core.Koin;
import org.koin.core.option.KoinOptionKt;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.qualifier.TypeQualifier;
import org.koin.core.scope.Scope;
import org.koin.mp.KoinPlatformTools;
import org.koin.mp.KoinPlatformTools_jvmKt;
import org.koin.viewmodel.scope.ViewModelScopeArchetypeKt;

/* JADX INFO: compiled from: KoinViewModelFactory.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001BC\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\u0016\b\u0002\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nj\u0004\u0018\u0001`\f¢\u0006\u0004\b\r\u0010\u000eJ-\u0010\u000f\u001a\u0002H\u0010\"\b\b\u0000\u0010\u0010*\u00020\u00042\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u00100\u00032\u0006\u0010\u0012\u001a\u00020\u0013H\u0016¢\u0006\u0002\u0010\u0014J$\u0010\u0015\u001a\u00060\u0016j\u0002`\u0017\"\b\b\u0000\u0010\u0010*\u00020\u00042\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u00100\u0003H\u0003R\u0016\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nj\u0004\u0018\u0001`\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lorg/koin/viewmodel/factory/KoinViewModelFactory;", "Landroidx/lifecycle/ViewModelProvider$Factory;", "kClass", "Lkotlin/reflect/KClass;", "Landroidx/lifecycle/ViewModel;", "scope", "Lorg/koin/core/scope/Scope;", "qualifier", "Lorg/koin/core/qualifier/Qualifier;", "params", "Lkotlin/Function0;", "Lorg/koin/core/parameter/ParametersHolder;", "Lorg/koin/core/parameter/ParametersDefinition;", "<init>", "(Lkotlin/reflect/KClass;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V", "create", ExifInterface.GPS_DIRECTION_TRUE, "modelClass", "extras", "Landroidx/lifecycle/viewmodel/CreationExtras;", "(Lkotlin/reflect/KClass;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;", "getViewModelScopeId", "", "Lorg/koin/core/scope/ScopeID;", "koin-core-viewmodel_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class KoinViewModelFactory implements ViewModelProvider.Factory {
    private final KClass<? extends ViewModel> kClass;
    private final Function0<ParametersHolder> params;
    private final Qualifier qualifier;
    private final Scope scope;

    /* JADX WARN: Multi-variable type inference failed */
    public KoinViewModelFactory(KClass<? extends ViewModel> kClass, Scope scope, Qualifier qualifier, Function0<? extends ParametersHolder> function0) {
        Intrinsics.checkNotNullParameter(kClass, "kClass");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.kClass = kClass;
        this.scope = scope;
        this.qualifier = qualifier;
        this.params = function0;
    }

    public /* synthetic */ KoinViewModelFactory(KClass kClass, Scope scope, Qualifier qualifier, Function0 function0, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(kClass, scope, (i & 4) != 0 ? null : qualifier, (i & 8) != 0 ? null : function0);
    }

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    public /* bridge */ <T extends ViewModel> T create(Class<T> cls) {
        return (T) super.create(cls);
    }

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    public /* bridge */ <T extends ViewModel> T create(Class<T> cls, CreationExtras creationExtras) {
        return (T) super.create(cls, creationExtras);
    }

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    public <T extends ViewModel> T create(KClass<T> modelClass, CreationExtras extras) {
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        Intrinsics.checkNotNullParameter(extras, "extras");
        AndroidParametersHolder androidParams = new AndroidParametersHolder(this.params, extras);
        Koin koin = this.scope.get_koin();
        if (!KoinOptionKt.hasViewModelScopeFactory(koin.getOptionRegistry())) {
            return (T) this.scope.getWithParameters(this.kClass, this.qualifier, androidParams);
        }
        String scopeId = getViewModelScopeId(modelClass);
        Scope vmScope = koin.createScope(scopeId, new TypeQualifier(modelClass), null, ViewModelScopeArchetypeKt.getViewModelScopeArchetype());
        T t = (T) vmScope.getWithParameters(this.kClass, this.qualifier, androidParams);
        t.addCloseable(new ViewModelScopeAutoCloseable(scopeId, koin));
        return t;
    }

    private final <T extends ViewModel> String getViewModelScopeId(KClass<T> modelClass) {
        return modelClass.getSimpleName() + '-' + KoinPlatformTools_jvmKt.generateId(KoinPlatformTools.INSTANCE);
    }
}
