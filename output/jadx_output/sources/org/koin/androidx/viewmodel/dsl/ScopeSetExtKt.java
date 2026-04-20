package org.koin.androidx.viewmodel.dsl;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.ViewModel;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.definition.KoinDefinition;
import org.koin.core.instance.FactoryInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.dsl.ScopeDSL;

/* JADX INFO: compiled from: ScopeSetExt.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001aY\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062)\b\b\u0010\u0007\u001a#\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u0002H\u00020\bj\b\u0012\u0004\u0012\u0002H\u0002`\f¢\u0006\u0002\b\u000bH\u0087\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\r"}, d2 = {"viewModel", "Lorg/koin/core/definition/KoinDefinition;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModel;", "Lorg/koin/dsl/ScopeDSL;", "qualifier", "Lorg/koin/core/qualifier/Qualifier;", "definition", "Lkotlin/Function2;", "Lorg/koin/core/scope/Scope;", "Lorg/koin/core/parameter/ParametersHolder;", "Lkotlin/ExtensionFunctionType;", "Lorg/koin/core/definition/Definition;", "koin-android_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class ScopeSetExtKt {
    public static /* synthetic */ KoinDefinition viewModel$default(ScopeDSL $this$viewModel_u24default, Qualifier qualifier, Function2 definition, int i, Object obj) {
        Qualifier qualifier2;
        if ((i & 1) == 0) {
            qualifier2 = qualifier;
        } else {
            qualifier2 = null;
        }
        Intrinsics.checkNotNullParameter($this$viewModel_u24default, "<this>");
        Intrinsics.checkNotNullParameter(definition, "definition");
        Qualifier qualifier$iv = qualifier2;
        Module this_$iv$iv = $this$viewModel_u24default.getModule();
        Qualifier scopeQualifier$iv$iv = $this$viewModel_u24default.getScopeQualifier();
        Kind kind$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        BeanDefinition def$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), qualifier$iv, definition, kind$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv);
        this_$iv$iv.indexPrimaryType(factory$iv$iv);
        return new KoinDefinition(this_$iv$iv, factory$iv$iv);
    }

    @Deprecated(message = "Moved ViewModel DSL package. Remove old imports and use org.koin.core.module.dsl.*")
    public static final /* synthetic */ <T extends ViewModel> KoinDefinition<T> viewModel(ScopeDSL $this$viewModel, Qualifier qualifier, Function2<? super Scope, ? super ParametersHolder, ? extends T> definition) {
        Intrinsics.checkNotNullParameter($this$viewModel, "<this>");
        Intrinsics.checkNotNullParameter(definition, "definition");
        Module this_$iv$iv = $this$viewModel.getModule();
        Qualifier scopeQualifier$iv$iv = $this$viewModel.getScopeQualifier();
        Kind kind$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        BeanDefinition def$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), qualifier, definition, kind$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv);
        this_$iv$iv.indexPrimaryType(factory$iv$iv);
        return new KoinDefinition<>(this_$iv$iv, factory$iv$iv);
    }
}
