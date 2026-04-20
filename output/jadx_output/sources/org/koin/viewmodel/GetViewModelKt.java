package org.koin.viewmodel;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.mp.KoinPlatformTools;
import org.koin.viewmodel.factory.KoinViewModelFactory;

/* JADX INFO: compiled from: GetViewModel.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000D\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\u001am\u0010\u0000\u001a\u0002H\u0001\"\b\b\u0000\u0010\u0001*\u00020\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u000e2\u0016\b\u0002\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010j\u0004\u0018\u0001`\u0012H\u0007¢\u0006\u0002\u0010\u0013\u001a.\u0010\u0014\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\bH\u0007\u001at\u0010\u0016\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0017\"\b\b\u0000\u0010\u0001*\u00020\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00010\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u00102\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u00102\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u000e2\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010H\u0007¨\u0006\u0018"}, d2 = {"resolveViewModel", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModel;", "vmClass", "Lkotlin/reflect/KClass;", "viewModelStore", "Landroidx/lifecycle/ViewModelStore;", "key", "", "extras", "Landroidx/lifecycle/viewmodel/CreationExtras;", "qualifier", "Lorg/koin/core/qualifier/Qualifier;", "scope", "Lorg/koin/core/scope/Scope;", "parameters", "Lkotlin/Function0;", "Lorg/koin/core/parameter/ParametersHolder;", "Lorg/koin/core/parameter/ParametersDefinition;", "(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStore;Ljava/lang/String;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;", "getViewModelKey", "className", "lazyResolveViewModel", "Lkotlin/Lazy;", "koin-core-viewmodel_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class GetViewModelKt {
    public static /* synthetic */ ViewModel resolveViewModel$default(KClass kClass, ViewModelStore viewModelStore, String str, CreationExtras creationExtras, Qualifier qualifier, Scope scope, Function0 function0, int i, Object obj) {
        if ((i & 4) != 0) {
            str = null;
        }
        if ((i & 16) != 0) {
            qualifier = null;
        }
        if ((i & 64) != 0) {
            function0 = null;
        }
        return resolveViewModel(kClass, viewModelStore, str, creationExtras, qualifier, scope, function0);
    }

    public static final <T extends ViewModel> T resolveViewModel(KClass<T> vmClass, ViewModelStore viewModelStore, String str, CreationExtras extras, Qualifier qualifier, Scope scope, Function0<? extends ParametersHolder> function0) {
        Intrinsics.checkNotNullParameter(vmClass, "vmClass");
        Intrinsics.checkNotNullParameter(viewModelStore, "viewModelStore");
        Intrinsics.checkNotNullParameter(extras, "extras");
        Intrinsics.checkNotNullParameter(scope, "scope");
        ViewModelProvider viewModelProviderCreate = ViewModelProvider.INSTANCE.create(viewModelStore, new KoinViewModelFactory(vmClass, scope, qualifier, function0), extras);
        String viewModelKey = getViewModelKey(qualifier, str, KoinPlatformTools.INSTANCE.getClassFullNameOrNull(vmClass));
        return viewModelKey != null ? (T) viewModelProviderCreate.get(viewModelKey, vmClass) : (T) viewModelProviderCreate.get(vmClass);
    }

    public static /* synthetic */ String getViewModelKey$default(Qualifier qualifier, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            qualifier = null;
        }
        if ((i & 2) != 0) {
            str = null;
        }
        if ((i & 4) != 0) {
            str2 = null;
        }
        return getViewModelKey(qualifier, str, str2);
    }

    public static final String getViewModelKey(Qualifier qualifier, String key, String className) {
        String it;
        if (key != null) {
            return key;
        }
        if (qualifier == null) {
            return null;
        }
        StringBuilder sbAppend = new StringBuilder().append(qualifier.getValue());
        if (className == null || (it = '_' + className) == null) {
            it = "";
        }
        return sbAppend.append(it).toString();
    }

    public static /* synthetic */ Lazy lazyResolveViewModel$default(KClass kClass, Function0 function0, String str, Function0 function02, Qualifier qualifier, Scope scope, Function0 function03, int i, Object obj) {
        if ((i & 4) != 0) {
            str = null;
        }
        if ((i & 16) != 0) {
            qualifier = null;
        }
        if ((i & 64) != 0) {
            function03 = null;
        }
        return lazyResolveViewModel(kClass, function0, str, function02, qualifier, scope, function03);
    }

    public static final <T extends ViewModel> Lazy<T> lazyResolveViewModel(final KClass<T> vmClass, final Function0<? extends ViewModelStore> viewModelStore, final String key, final Function0<? extends CreationExtras> extras, final Qualifier qualifier, final Scope scope, final Function0<? extends ParametersHolder> function0) {
        Intrinsics.checkNotNullParameter(vmClass, "vmClass");
        Intrinsics.checkNotNullParameter(viewModelStore, "viewModelStore");
        Intrinsics.checkNotNullParameter(extras, "extras");
        Intrinsics.checkNotNullParameter(scope, "scope");
        return LazyKt.lazy(LazyThreadSafetyMode.NONE, new Function0() { // from class: org.koin.viewmodel.GetViewModelKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                KClass kClass = vmClass;
                Function0 function02 = viewModelStore;
                return GetViewModelKt.resolveViewModel(kClass, (ViewModelStore) function02.invoke(), key, (CreationExtras) extras.invoke(), qualifier, scope, function0);
            }
        });
    }
}
