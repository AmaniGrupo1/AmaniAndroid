package org.koin.androidx.compose;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.compose.KoinApplicationKt;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.viewmodel.CreationExtrasExtKt;
import org.koin.viewmodel.GetViewModelKt;

/* JADX INFO: compiled from: ViewModel.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u00008\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001ak\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u00022\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\u0016\b\n\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000ej\u0004\u0018\u0001`\u0010H\u0087\bø\u0001\u0000¢\u0006\u0002\u0010\u0011\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0012"}, d2 = {"koinViewModel", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModel;", "qualifier", "Lorg/koin/core/qualifier/Qualifier;", "viewModelStoreOwner", "Landroidx/lifecycle/ViewModelStoreOwner;", "key", "", "extras", "Landroidx/lifecycle/viewmodel/CreationExtras;", "scope", "Lorg/koin/core/scope/Scope;", "parameters", "Lkotlin/Function0;", "Lorg/koin/core/parameter/ParametersHolder;", "Lorg/koin/core/parameter/ParametersDefinition;", "(Lorg/koin/core/qualifier/Qualifier;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/lifecycle/ViewModel;", "koin-androidx-compose_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class ViewModelKt {
    public static final /* synthetic */ <T extends ViewModel> T koinViewModel(Qualifier qualifier, ViewModelStoreOwner viewModelStoreOwner, String str, CreationExtras creationExtras, Scope scope, Function0<? extends ParametersHolder> function0, Composer composer, int i, int i2) {
        Qualifier qualifier2;
        String str2;
        CreationExtras creationExtrasDefaultExtras;
        Scope scopeCurrentKoinScope;
        Function0<? extends ParametersHolder> function02;
        ComposerKt.sourceInformationMarkerStart(composer, -1614864554, "CC(koinViewModel)N(qualifier,viewModelStoreOwner,key,extras,scope,parameters)43@1516L7,46@1711L18:ViewModel.kt#m7on9k");
        if ((i2 & 1) != 0) {
            qualifier2 = null;
        } else {
            qualifier2 = qualifier;
        }
        if ((i2 & 2) != 0) {
            ViewModelStoreOwner current = LocalViewModelStoreOwner.INSTANCE.getCurrent(composer, LocalViewModelStoreOwner.$stable);
            if (current == null) {
                throw new IllegalStateException("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner".toString());
            }
            viewModelStoreOwner = current;
        }
        if ((i2 & 4) == 0) {
            str2 = str;
        } else {
            str2 = null;
        }
        if ((i2 & 8) == 0) {
            creationExtrasDefaultExtras = creationExtras;
        } else {
            creationExtrasDefaultExtras = CreationExtrasExtKt.defaultExtras(viewModelStoreOwner);
        }
        if ((i2 & 16) == 0) {
            scopeCurrentKoinScope = scope;
        } else {
            scopeCurrentKoinScope = KoinApplicationKt.currentKoinScope(composer, 0);
        }
        if ((i2 & 32) == 0) {
            function02 = function0;
        } else {
            function02 = null;
        }
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        T t = (T) GetViewModelKt.resolveViewModel(Reflection.getOrCreateKotlinClass(ViewModel.class), viewModelStoreOwner.getViewModelStore(), str2, creationExtrasDefaultExtras, qualifier2, scopeCurrentKoinScope, function02);
        ComposerKt.sourceInformationMarkerEnd(composer);
        return t;
    }
}
