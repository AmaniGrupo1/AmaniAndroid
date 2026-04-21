package org.koin.plugin.module.dsl;

import androidx.exifinterface.media.ExifInterface;
import java.util.Collection;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.definition.KoinDefinition;
import org.koin.core.instance.FactoryInstanceFactory;
import org.koin.core.instance.ScopedInstanceFactory;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.qualifier.TypeQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
import org.koin.dsl.ScopeDSL;

/* JADX INFO: compiled from: ModuleExt.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000V\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\u001ag\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2'\u0010\t\u001a#\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u0002H\u00020\nj\b\u0012\u0004\u0012\u0002H\u0002`\u000e¢\u0006\u0002\b\r2\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u001a]\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2'\u0010\t\u001a#\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u0002H\u00020\nj\b\u0012\u0004\u0012\u0002H\u0002`\u000e¢\u0006\u0002\b\r\u001a]\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u00020\u00132\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2'\u0010\t\u001a#\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u0002H\u00020\nj\b\u0012\u0004\u0012\u0002H\u0002`\u000e¢\u0006\u0002\b\r\u001a]\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u00020\u00132\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2'\u0010\t\u001a#\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u0002H\u00020\nj\b\u0012\u0004\u0012\u0002H\u0002`\u000e¢\u0006\u0002\b\r\u001a+\u0010\u0014\u001a\u00020\u0015*\u00020\u00042\u0006\u0010\u0007\u001a\u00020\b2\u0017\u0010\u0016\u001a\u0013\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00150\u0017¢\u0006\u0002\b\r\u001a\u0012\u0010\u0018\u001a\u00020\u0015*\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0004\u001a\u001e\u0010\u001a\u001a\u00020\b\"\b\b\u0000\u0010\u0002*\u00020\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006\u001a*\u0010\u001b\u001a\u0006\u0012\u0002\b\u00030\u0001\"\b\b\u0000\u0010\u001c*\u00020\u0003*\u0006\u0012\u0002\b\u00030\u00012\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u0002H\u001c0\u0006\u001a\u007f\u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00062'\u0010\t\u001a#\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u0002H\u00020\nj\b\u0012\u0004\u0012\u0002H\u0002`\u000e¢\u0006\u0002\b\r2\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\u001f\u001a\u00020\b2\u0006\u0010 \u001a\u00020!2\u0006\u0010\u0019\u001a\u00020\u00042\b\b\u0002\u0010\u000f\u001a\u00020\u0010H\u0007¨\u0006\""}, d2 = {"buildSingle", "Lorg/koin/core/definition/KoinDefinition;", ExifInterface.GPS_DIRECTION_TRUE, "", "Lorg/koin/core/module/Module;", "kclass", "Lkotlin/reflect/KClass;", "qualifier", "Lorg/koin/core/qualifier/Qualifier;", "definition", "Lkotlin/Function2;", "Lorg/koin/core/scope/Scope;", "Lorg/koin/core/parameter/ParametersHolder;", "Lkotlin/ExtensionFunctionType;", "Lorg/koin/core/definition/Definition;", "createdAtStart", "", "buildFactory", "buildScoped", "Lorg/koin/dsl/ScopeDSL;", "scope", "", "scopeSet", "Lkotlin/Function1;", "includes", "module", "typeQualifier", "bind", ExifInterface.LATITUDE_SOUTH, "clazz", "createDefinition", "scopeQualifier", "factoryKind", "Lorg/koin/core/definition/Kind;", "koin-core"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class ModuleExtKt {

    /* JADX INFO: compiled from: ModuleExt.kt */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Kind.values().length];
            try {
                iArr[Kind.Singleton.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[Kind.Factory.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[Kind.Scoped.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static /* synthetic */ KoinDefinition buildSingle$default(Module module, KClass kClass, Qualifier qualifier, Function2 function2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            qualifier = null;
        }
        if ((i & 8) != 0) {
            z = false;
        }
        return buildSingle(module, kClass, qualifier, function2, z);
    }

    public static final <T> KoinDefinition<T> buildSingle(Module $this$buildSingle, KClass<T> kclass, Qualifier qualifier, Function2<? super Scope, ? super ParametersHolder, ? extends T> definition, boolean createdAtStart) {
        Intrinsics.checkNotNullParameter($this$buildSingle, "<this>");
        Intrinsics.checkNotNullParameter(kclass, "kclass");
        Intrinsics.checkNotNullParameter(definition, "definition");
        return createDefinition$default(kclass, definition, qualifier, null, Kind.Singleton, $this$buildSingle, createdAtStart, 8, null);
    }

    public static /* synthetic */ KoinDefinition buildFactory$default(Module module, KClass kClass, Qualifier qualifier, Function2 function2, int i, Object obj) {
        if ((i & 2) != 0) {
            qualifier = null;
        }
        return buildFactory(module, kClass, qualifier, function2);
    }

    public static final <T> KoinDefinition<T> buildFactory(Module $this$buildFactory, KClass<T> kclass, Qualifier qualifier, Function2<? super Scope, ? super ParametersHolder, ? extends T> definition) {
        Intrinsics.checkNotNullParameter($this$buildFactory, "<this>");
        Intrinsics.checkNotNullParameter(kclass, "kclass");
        Intrinsics.checkNotNullParameter(definition, "definition");
        return createDefinition$default(kclass, definition, qualifier, null, Kind.Factory, $this$buildFactory, false, 72, null);
    }

    public static /* synthetic */ KoinDefinition buildScoped$default(ScopeDSL scopeDSL, KClass kClass, Qualifier qualifier, Function2 function2, int i, Object obj) {
        if ((i & 2) != 0) {
            qualifier = null;
        }
        return buildScoped(scopeDSL, kClass, qualifier, function2);
    }

    public static final <T> KoinDefinition<T> buildScoped(ScopeDSL $this$buildScoped, KClass<T> kclass, Qualifier qualifier, Function2<? super Scope, ? super ParametersHolder, ? extends T> definition) {
        Intrinsics.checkNotNullParameter($this$buildScoped, "<this>");
        Intrinsics.checkNotNullParameter(kclass, "kclass");
        Intrinsics.checkNotNullParameter(definition, "definition");
        return createDefinition$default(kclass, definition, qualifier, $this$buildScoped.getScopeQualifier(), Kind.Scoped, $this$buildScoped.getModule(), false, 64, null);
    }

    public static /* synthetic */ KoinDefinition buildFactory$default(ScopeDSL scopeDSL, KClass kClass, Qualifier qualifier, Function2 function2, int i, Object obj) {
        if ((i & 2) != 0) {
            qualifier = null;
        }
        return buildFactory(scopeDSL, kClass, qualifier, function2);
    }

    public static final <T> KoinDefinition<T> buildFactory(ScopeDSL $this$buildFactory, KClass<T> kclass, Qualifier qualifier, Function2<? super Scope, ? super ParametersHolder, ? extends T> definition) {
        Intrinsics.checkNotNullParameter($this$buildFactory, "<this>");
        Intrinsics.checkNotNullParameter(kclass, "kclass");
        Intrinsics.checkNotNullParameter(definition, "definition");
        return createDefinition$default(kclass, definition, qualifier, $this$buildFactory.getScopeQualifier(), Kind.Factory, $this$buildFactory.getModule(), false, 64, null);
    }

    public static final void scope(Module $this$scope, Qualifier qualifier, Function1<? super ScopeDSL, Unit> scopeSet) {
        Intrinsics.checkNotNullParameter($this$scope, "<this>");
        Intrinsics.checkNotNullParameter(qualifier, "qualifier");
        Intrinsics.checkNotNullParameter(scopeSet, "scopeSet");
        scopeSet.invoke(new ScopeDSL(qualifier, $this$scope));
    }

    public static final void includes(Module $this$includes, Module module) {
        Intrinsics.checkNotNullParameter($this$includes, "<this>");
        Intrinsics.checkNotNullParameter(module, "module");
        $this$includes.includes(CollectionsKt.listOf(module));
    }

    public static final <T> Qualifier typeQualifier(KClass<T> kclass) {
        Intrinsics.checkNotNullParameter(kclass, "kclass");
        return new TypeQualifier(kclass);
    }

    public static final <S> KoinDefinition<?> bind(KoinDefinition<?> koinDefinition, KClass<S> clazz) {
        Intrinsics.checkNotNullParameter(koinDefinition, "<this>");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        BeanDefinition<?> beanDefinition = koinDefinition.getFactory().getBeanDefinition();
        beanDefinition.setSecondaryTypes(CollectionsKt.plus((Collection<? extends KClass<S>>) beanDefinition.getSecondaryTypes(), clazz));
        koinDefinition.getModule().indexSecondaryTypes(koinDefinition.getFactory());
        return koinDefinition;
    }

    public static /* synthetic */ KoinDefinition createDefinition$default(KClass kClass, Function2 function2, Qualifier qualifier, Qualifier qualifier2, Kind kind, Module module, boolean z, int i, Object obj) {
        return createDefinition(kClass, function2, (i & 4) != 0 ? null : qualifier, (i & 8) != 0 ? ScopeRegistry.INSTANCE.getRootScopeQualifier() : qualifier2, kind, module, (i & 64) != 0 ? false : z);
    }

    public static final <T> KoinDefinition<T> createDefinition(KClass<T> kclass, Function2<? super Scope, ? super ParametersHolder, ? extends T> definition, Qualifier qualifier, Qualifier scopeQualifier, Kind factoryKind, Module module, boolean createdAtStart) {
        SingleInstanceFactory singleInstanceFactory;
        Intrinsics.checkNotNullParameter(kclass, "kclass");
        Intrinsics.checkNotNullParameter(definition, "definition");
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Intrinsics.checkNotNullParameter(factoryKind, "factoryKind");
        Intrinsics.checkNotNullParameter(module, "module");
        BeanDefinition def = new BeanDefinition(scopeQualifier, kclass, qualifier, definition, factoryKind, CollectionsKt.emptyList(), null, 64, null);
        switch (WhenMappings.$EnumSwitchMapping$0[factoryKind.ordinal()]) {
            case 1:
                singleInstanceFactory = new SingleInstanceFactory(def);
                break;
            case 2:
                singleInstanceFactory = new FactoryInstanceFactory(def);
                break;
            case 3:
                singleInstanceFactory = new ScopedInstanceFactory(def, false, 2, null);
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        module.indexPrimaryType(singleInstanceFactory);
        if (createdAtStart && factoryKind == Kind.Singleton && (singleInstanceFactory instanceof SingleInstanceFactory)) {
            module.getEagerInstances().add(singleInstanceFactory);
        }
        return new KoinDefinition<>(module, singleInstanceFactory);
    }
}
