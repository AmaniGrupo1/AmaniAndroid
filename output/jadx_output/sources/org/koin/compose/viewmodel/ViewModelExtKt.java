package org.koin.compose.viewmodel;

import android.app.Activity;
import androidx.activity.ComponentActivity;
import androidx.activity.compose.LocalActivityKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.internal.FunctionKeyMeta;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import org.koin.compose.KoinApplicationKt;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.viewmodel.CreationExtrasExtKt;
import org.koin.viewmodel.GetViewModelKt;

/* JADX INFO: compiled from: ViewModelExt.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000,\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aW\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u00022\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\u0016\b\n\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nj\u0004\u0018\u0001`\fH\u0087\bø\u0001\u0000¢\u0006\u0002\u0010\r\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"koinActivityViewModel", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModel;", "qualifier", "Lorg/koin/core/qualifier/Qualifier;", "key", "", "scope", "Lorg/koin/core/scope/Scope;", "parameters", "Lkotlin/Function0;", "Lorg/koin/core/parameter/ParametersHolder;", "Lorg/koin/core/parameter/ParametersDefinition;", "(Lorg/koin/core/qualifier/Qualifier;Ljava/lang/String;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/lifecycle/ViewModel;", "koin-compose-viewmodel_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class ViewModelExtKt {
    @FunctionKeyMeta(endOffset = 2281, key = -2088599273, startOffset = 1837)
    public static final /* synthetic */ <T extends ViewModel> T koinActivityViewModel(Qualifier qualifier, String str, Scope scope, Function0<? extends ParametersHolder> function0, Composer composer, int i, int i2) {
        ComposerKt.sourceInformationMarkerStart(composer, -2088599273, "CC(koinActivityViewModel)N(qualifier,key,scope,parameters)47@1966L18,51@2133L7,49@2048L233:ViewModelExt.kt#7bazx");
        Qualifier qualifier2 = (i2 & 1) != 0 ? null : qualifier;
        String str2 = (i2 & 2) != 0 ? null : str;
        Scope scopeCurrentKoinScope = (i2 & 4) != 0 ? KoinApplicationKt.currentKoinScope(composer, 0) : scope;
        Function0<? extends ParametersHolder> function02 = (i2 & 8) != 0 ? null : function0;
        ProvidableCompositionLocal<Activity> localActivity = LocalActivityKt.getLocalActivity();
        ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
        Object objConsume = composer.consume(localActivity);
        ComposerKt.sourceInformationMarkerEnd(composer);
        ViewModelStoreOwner viewModelStoreOwner = objConsume instanceof ComponentActivity ? (ComponentActivity) objConsume : null;
        if (viewModelStoreOwner == null) {
            throw new IllegalStateException("LocalActivity is not a ComponentActivity".toString());
        }
        ViewModelStoreOwner viewModelStoreOwner2 = viewModelStoreOwner;
        int i3 = (i & 14) | ((i << 3) & 896) | ((i << 6) & 57344) | (458752 & (i << 6));
        String str3 = str2;
        ComposerKt.sourceInformationMarkerStart(composer, -924953623, "CC(koinViewModel)N(qualifier,viewModelStoreOwner,key,extras,scope,parameters)48@1587L7,51@1782L18:ViewModel.kt#7bazx");
        CreationExtras creationExtrasDefaultExtras = CreationExtrasExtKt.defaultExtras(viewModelStoreOwner2);
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ViewModel.class);
        ViewModelStore viewModelStore = viewModelStoreOwner2.getViewModelStore();
        T t = (T) GetViewModelKt.resolveViewModel(orCreateKotlinClass, viewModelStore, str3, creationExtrasDefaultExtras, qualifier2, scopeCurrentKoinScope, function02);
        ComposerKt.sourceInformationMarkerEnd(composer);
        ComposerKt.sourceInformationMarkerEnd(composer);
        return t;
    }
}
