package org.koin.core.module;

import androidx.exifinterface.media.ExifInterface;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.error.DefinitionOverrideException;
import org.koin.core.instance.FactoryInstanceFactory;
import org.koin.core.instance.InstanceFactory;
import org.koin.core.instance.ScopedInstanceFactory;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;

/* JADX INFO: compiled from: Module.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000`\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0002\u001a \u0010\u0000\u001a\u00020\u00012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u00032\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006H\u0001\u001a \u0010\u0007\u001a\u00020\u00012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u00032\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006H\u0001\u001a[\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\n0\t\"\u0006\b\u0000\u0010\n\u0018\u00012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2)\b\b\u0010\r\u001a#\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u0002H\n0\u000ej\b\u0012\u0004\u0012\u0002H\n`\u0012¢\u0006\u0002\b\u00112\b\b\u0002\u0010\u0013\u001a\u00020\fH\u0087\bø\u0001\u0000\u001a[\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\n0\u0015\"\u0006\b\u0000\u0010\n\u0018\u00012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2)\b\b\u0010\r\u001a#\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u0002H\n0\u000ej\b\u0012\u0004\u0012\u0002H\n`\u0012¢\u0006\u0002\b\u00112\b\b\u0002\u0010\u0013\u001a\u00020\fH\u0087\bø\u0001\u0000\u001aY\u0010\u0016\u001a\b\u0012\u0004\u0012\u0002H\n0\u0017\"\u0006\b\u0000\u0010\n\u0018\u00012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2)\b\b\u0010\r\u001a#\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u0002H\n0\u000ej\b\u0012\u0004\u0012\u0002H\n`\u0012¢\u0006\u0002\b\u00112\u0006\u0010\u0013\u001a\u00020\fH\u0087\bø\u0001\u0000\u001a!\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0019*\b\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u001b\u001a\u00020\u001aH\u0086\u0002\u001a\u001c\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001a0\u001d2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0019H\u0007\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001f"}, d2 = {"overrideError", "", "factory", "Lorg/koin/core/instance/InstanceFactory;", "mapping", "", "Lorg/koin/core/definition/IndexKey;", "throwOverrideError", "_singleInstanceFactory", "Lorg/koin/core/instance/SingleInstanceFactory;", ExifInterface.GPS_DIRECTION_TRUE, "qualifier", "Lorg/koin/core/qualifier/Qualifier;", "definition", "Lkotlin/Function2;", "Lorg/koin/core/scope/Scope;", "Lorg/koin/core/parameter/ParametersHolder;", "Lkotlin/ExtensionFunctionType;", "Lorg/koin/core/definition/Definition;", "scopeQualifier", "_factoryInstanceFactory", "Lorg/koin/core/instance/FactoryInstanceFactory;", "_scopedInstanceFactory", "Lorg/koin/core/instance/ScopedInstanceFactory;", "plus", "", "Lorg/koin/core/module/Module;", "module", "flatten", "", "modules", "koin-core"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class ModuleKt {
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Renamed to throwOverrideError for clarity", replaceWith = @ReplaceWith(expression = "throwOverrideError(factory, mapping)", imports = {}))
    public static final /* synthetic */ void overrideError(InstanceFactory factory, String mapping) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(mapping, "mapping");
        throwOverrideError(factory, mapping);
    }

    public static final void throwOverrideError(InstanceFactory<?> factory, String mapping) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(mapping, "mapping");
        throw new DefinitionOverrideException("Already existing definition for " + factory.getBeanDefinition() + " at " + mapping);
    }

    public static /* synthetic */ SingleInstanceFactory _singleInstanceFactory$default(Qualifier qualifier, Function2 definition, Qualifier scopeQualifier, int i, Object obj) {
        if ((i & 1) != 0) {
            qualifier = null;
        }
        if ((i & 4) != 0) {
            Qualifier scopeQualifier2 = ScopeRegistry.INSTANCE.getRootScopeQualifier();
            scopeQualifier = scopeQualifier2;
        }
        Intrinsics.checkNotNullParameter(definition, "definition");
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Kind kind$iv = Kind.Singleton;
        Qualifier scopeQualifier$iv = scopeQualifier;
        Qualifier qualifier$iv = qualifier;
        List secondaryTypes$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        BeanDefinition def = new BeanDefinition(scopeQualifier$iv, Reflection.getOrCreateKotlinClass(Object.class), qualifier$iv, definition, kind$iv, secondaryTypes$iv, null, 64, null);
        return new SingleInstanceFactory(def);
    }

    public static final /* synthetic */ <T> SingleInstanceFactory<T> _singleInstanceFactory(Qualifier qualifier, Function2<? super Scope, ? super ParametersHolder, ? extends T> definition, Qualifier scopeQualifier) {
        Intrinsics.checkNotNullParameter(definition, "definition");
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Kind kind$iv = Kind.Singleton;
        List secondaryTypes$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        BeanDefinition def = new BeanDefinition(scopeQualifier, Reflection.getOrCreateKotlinClass(Object.class), qualifier, definition, kind$iv, secondaryTypes$iv, null, 64, null);
        return new SingleInstanceFactory<>(def);
    }

    public static /* synthetic */ FactoryInstanceFactory _factoryInstanceFactory$default(Qualifier qualifier, Function2 definition, Qualifier scopeQualifier, int i, Object obj) {
        if ((i & 1) != 0) {
            qualifier = null;
        }
        if ((i & 4) != 0) {
            Qualifier scopeQualifier2 = ScopeRegistry.INSTANCE.getRootScopeQualifier();
            scopeQualifier = scopeQualifier2;
        }
        Intrinsics.checkNotNullParameter(definition, "definition");
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Kind kind$iv = Kind.Factory;
        Qualifier scopeQualifier$iv = scopeQualifier;
        Qualifier qualifier$iv = qualifier;
        List secondaryTypes$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        BeanDefinition def = new BeanDefinition(scopeQualifier$iv, Reflection.getOrCreateKotlinClass(Object.class), qualifier$iv, definition, kind$iv, secondaryTypes$iv, null, 64, null);
        return new FactoryInstanceFactory(def);
    }

    public static final /* synthetic */ <T> FactoryInstanceFactory<T> _factoryInstanceFactory(Qualifier qualifier, Function2<? super Scope, ? super ParametersHolder, ? extends T> definition, Qualifier scopeQualifier) {
        Intrinsics.checkNotNullParameter(definition, "definition");
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Kind kind$iv = Kind.Factory;
        List secondaryTypes$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        BeanDefinition def = new BeanDefinition(scopeQualifier, Reflection.getOrCreateKotlinClass(Object.class), qualifier, definition, kind$iv, secondaryTypes$iv, null, 64, null);
        return new FactoryInstanceFactory<>(def);
    }

    public static /* synthetic */ ScopedInstanceFactory _scopedInstanceFactory$default(Qualifier qualifier, Function2 definition, Qualifier scopeQualifier, int i, Object obj) {
        if ((i & 1) != 0) {
            qualifier = null;
        }
        Intrinsics.checkNotNullParameter(definition, "definition");
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Kind kind$iv = Kind.Scoped;
        Qualifier qualifier$iv = qualifier;
        List secondaryTypes$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        BeanDefinition def = new BeanDefinition(scopeQualifier, Reflection.getOrCreateKotlinClass(Object.class), qualifier$iv, definition, kind$iv, secondaryTypes$iv, null, 64, null);
        return new ScopedInstanceFactory(def, false, 2, null);
    }

    public static final /* synthetic */ <T> ScopedInstanceFactory<T> _scopedInstanceFactory(Qualifier qualifier, Function2<? super Scope, ? super ParametersHolder, ? extends T> definition, Qualifier scopeQualifier) {
        Intrinsics.checkNotNullParameter(definition, "definition");
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Kind kind$iv = Kind.Scoped;
        List secondaryTypes$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        BeanDefinition def = new BeanDefinition(scopeQualifier, Reflection.getOrCreateKotlinClass(Object.class), qualifier, definition, kind$iv, secondaryTypes$iv, null, 64, null);
        return new ScopedInstanceFactory<>(def, false, 2, null);
    }

    public static final List<Module> plus(List<Module> list, Module module) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(module, "module");
        return CollectionsKt.plus((Collection) list, (Iterable) CollectionsKt.listOf(module));
    }

    public static final Set<Module> flatten(List<Module> modules) {
        Intrinsics.checkNotNullParameter(modules, "modules");
        LinkedHashSet flatten = new LinkedHashSet();
        ArrayDeque stack = new ArrayDeque(CollectionsKt.asReversed(modules));
        while (!stack.isEmpty()) {
            Module current = (Module) stack.removeLast();
            if (flatten.add(current)) {
                for (Module module : CollectionsKt.asReversedMutable(current.getIncludedModules())) {
                    if (!flatten.contains(module)) {
                        stack.add(module);
                    }
                }
            }
        }
        return flatten;
    }
}
