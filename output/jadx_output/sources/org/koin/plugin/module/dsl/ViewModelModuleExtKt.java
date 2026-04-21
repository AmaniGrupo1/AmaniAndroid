package org.koin.plugin.module.dsl;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.ViewModel;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import org.koin.core.definition.Kind;
import org.koin.core.definition.KoinDefinition;
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.dsl.ScopeDSL;

/* JADX INFO: compiled from: ViewModelModuleExt.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u00008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a]\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2'\u0010\t\u001a#\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u0002H\u00020\nj\b\u0012\u0004\u0012\u0002H\u0002`\u000e¢\u0006\u0002\b\r\u001a]\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u00020\u000f2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2'\u0010\t\u001a#\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u0002H\u00020\nj\b\u0012\u0004\u0012\u0002H\u0002`\u000e¢\u0006\u0002\b\r¨\u0006\u0010"}, d2 = {"buildViewModel", "Lorg/koin/core/definition/KoinDefinition;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModel;", "Lorg/koin/core/module/Module;", "kclass", "Lkotlin/reflect/KClass;", "qualifier", "Lorg/koin/core/qualifier/Qualifier;", "definition", "Lkotlin/Function2;", "Lorg/koin/core/scope/Scope;", "Lorg/koin/core/parameter/ParametersHolder;", "Lkotlin/ExtensionFunctionType;", "Lorg/koin/core/definition/Definition;", "Lorg/koin/dsl/ScopeDSL;", "koin-core-viewmodel_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class ViewModelModuleExtKt {
    public static /* synthetic */ KoinDefinition buildViewModel$default(Module module, KClass kClass, Qualifier qualifier, Function2 function2, int i, Object obj) {
        if ((i & 2) != 0) {
            qualifier = null;
        }
        return buildViewModel(module, kClass, qualifier, function2);
    }

    public static final <T extends ViewModel> KoinDefinition<T> buildViewModel(Module module, KClass<T> kclass, Qualifier qualifier, Function2<? super Scope, ? super ParametersHolder, ? extends T> definition) {
        Intrinsics.checkNotNullParameter(module, "<this>");
        Intrinsics.checkNotNullParameter(kclass, "kclass");
        Intrinsics.checkNotNullParameter(definition, "definition");
        KoinDefinition<T> koinDefinition = (KoinDefinition<T>) ModuleExtKt.bind(ModuleExtKt.createDefinition$default(kclass, definition, qualifier, null, Kind.Factory, module, false, 72, null), Reflection.getOrCreateKotlinClass(ViewModel.class));
        Intrinsics.checkNotNull(koinDefinition, "null cannot be cast to non-null type org.koin.core.definition.KoinDefinition<T of org.koin.plugin.module.dsl.ViewModelModuleExtKt.buildViewModel>");
        return koinDefinition;
    }

    public static /* synthetic */ KoinDefinition buildViewModel$default(ScopeDSL scopeDSL, KClass kClass, Qualifier qualifier, Function2 function2, int i, Object obj) {
        if ((i & 2) != 0) {
            qualifier = null;
        }
        return buildViewModel(scopeDSL, kClass, qualifier, function2);
    }

    public static final <T extends ViewModel> KoinDefinition<T> buildViewModel(ScopeDSL scopeDSL, KClass<T> kclass, Qualifier qualifier, Function2<? super Scope, ? super ParametersHolder, ? extends T> definition) {
        Intrinsics.checkNotNullParameter(scopeDSL, "<this>");
        Intrinsics.checkNotNullParameter(kclass, "kclass");
        Intrinsics.checkNotNullParameter(definition, "definition");
        KoinDefinition<T> koinDefinition = (KoinDefinition<T>) ModuleExtKt.bind(ModuleExtKt.createDefinition$default(kclass, definition, qualifier, scopeDSL.getScopeQualifier(), Kind.Factory, scopeDSL.getModule(), false, 64, null), Reflection.getOrCreateKotlinClass(Reflection.getOrCreateKotlinClass(ViewModel.class).getClass()));
        Intrinsics.checkNotNull(koinDefinition, "null cannot be cast to non-null type org.koin.core.definition.KoinDefinition<T of org.koin.plugin.module.dsl.ViewModelModuleExtKt.buildViewModel>");
        return koinDefinition;
    }
}
