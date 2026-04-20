package org.koin.core.registry;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.koin.core.Koin;
import org.koin.core.annotation.KoinExperimentalAPI;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.error.MissingScopeValueException;
import org.koin.core.instance.InstanceFactory;
import org.koin.core.instance.NoClass;
import org.koin.core.instance.ResolutionContext;
import org.koin.core.instance.ScopedInstanceFactory;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.module.ModuleKt;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.qualifier.TypeQualifier;
import org.koin.core.scope.Scope;
import org.koin.ext.KClassExtKt;
import org.koin.mp.KoinPlatformTools;

/* JADX INFO: compiled from: InstanceRegistry.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J#\u0010\u0014\u001a\u00020\u00152\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\u0006\u0010\u0019\u001a\u00020\u001aH\u0000¢\u0006\u0002\b\u001bJ\u0010\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0018H\u0002J\r\u0010\u001e\u001a\u00020\u0015H\u0000¢\u0006\u0002\b\u001fJ\u0018\u0010 \u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J2\u0010!\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u001a2\n\u0010\"\u001a\u00060\nj\u0002`\u000b2\n\u0010#\u001a\u0006\u0012\u0002\b\u00030\f2\b\b\u0002\u0010$\u001a\u00020\u001aH\u0007J\u001a\u0010%\u001a\u00020\u00152\u0010\u0010\r\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00130&H\u0002J1\u0010'\u001a\b\u0012\u0002\b\u0003\u0018\u00010\f2\n\u0010(\u001a\u0006\u0012\u0002\b\u00030)2\b\u0010*\u001a\u0004\u0018\u00010+2\u0006\u0010,\u001a\u00020+H\u0000¢\u0006\u0002\b-J5\u0010.\u001a\u0004\u0018\u0001H/\"\u0004\b\u0000\u0010/2\b\u0010*\u001a\u0004\u0018\u00010+2\n\u00100\u001a\u0006\u0012\u0002\b\u00030)2\u0006\u00101\u001a\u000202H\u0001¢\u0006\u0004\b3\u00104J=\u00105\u001a\u0004\u0018\u0001H/\"\u0004\b\u0000\u0010/2\b\u0010*\u001a\u0004\u0018\u00010+2\n\u0010(\u001a\u0006\u0012\u0002\b\u00030)2\u0006\u0010,\u001a\u00020+2\u0006\u00106\u001a\u000202H\u0000¢\u0006\u0004\b7\u00108Jd\u00109\u001a\u00020\u0015\"\u0006\b\u0000\u0010/\u0018\u00012\u0006\u0010:\u001a\u0002H/2\u0006\u0010,\u001a\u00020+2\n\u0010;\u001a\u00060\nj\u0002`<2\n\b\u0002\u0010*\u001a\u0004\u0018\u00010+2\u0012\b\u0002\u0010=\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030)0>2\b\b\u0002\u0010\u0019\u001a\u00020\u001a2\u0006\u0010?\u001a\u00020\u001aH\u0081\b¢\u0006\u0002\u0010@JH\u0010A\u001a\u00020\u0015\"\u0006\b\u0000\u0010/\u0018\u00012\u0006\u0010:\u001a\u0002H/2\n\b\u0002\u0010*\u001a\u0004\u0018\u00010+2\u0012\b\u0002\u0010=\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030)0>2\b\b\u0002\u0010\u0019\u001a\u00020\u001aH\u0081\b¢\u0006\u0002\u0010BJ\u0015\u0010C\u001a\u00020\u00152\u0006\u0010D\u001a\u00020EH\u0000¢\u0006\u0002\bFJ\r\u0010G\u001a\u00020\u0015H\u0000¢\u0006\u0002\bHJ-\u0010I\u001a\b\u0012\u0004\u0012\u0002H/0>\"\u0004\b\u0000\u0010/2\n\u0010(\u001a\u0006\u0012\u0002\b\u00030)2\u0006\u00106\u001a\u000202H\u0000¢\u0006\u0002\bJJ\u001b\u0010K\u001a\u00020\u00152\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017H\u0000¢\u0006\u0002\bLJ\u0010\u0010M\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0018H\u0002J\u0006\u0010N\u001a\u00020\u0012R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\"\u0010\b\u001a\u0016\u0012\b\u0012\u00060\nj\u0002`\u000b\u0012\b\u0012\u0006\u0012\u0002\b\u00030\f0\tX\u0082\u0004¢\u0006\u0002\n\u0000R%\u0010\r\u001a\u0016\u0012\b\u0012\u00060\nj\u0002`\u000b\u0012\b\u0012\u0006\u0012\u0002\b\u00030\f0\u000e8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00130\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006O"}, d2 = {"Lorg/koin/core/registry/InstanceRegistry;", "", "_koin", "Lorg/koin/core/Koin;", "<init>", "(Lorg/koin/core/Koin;)V", "get_koin", "()Lorg/koin/core/Koin;", "_instances", "", "", "Lorg/koin/core/definition/IndexKey;", "Lorg/koin/core/instance/InstanceFactory;", "instances", "", "getInstances", "()Ljava/util/Map;", "eagerInstances", "", "Lorg/koin/core/instance/SingleInstanceFactory;", "loadModules", "", "modules", "", "Lorg/koin/core/module/Module;", "allowOverride", "", "loadModules$koin_core", "addAllEagerInstances", "module", "createAllEagerInstances", "createAllEagerInstances$koin_core", "loadModule", "saveMapping", "mapping", "factory", "logWarning", "createEagerInstances", "", "resolveDefinition", "clazz", "Lkotlin/reflect/KClass;", "qualifier", "Lorg/koin/core/qualifier/Qualifier;", "scopeQualifier", "resolveDefinition$koin_core", "resolveScopeArchetypeInstance", ExifInterface.GPS_DIRECTION_TRUE, "klass", "context", "Lorg/koin/core/instance/ResolutionContext;", "resolveScopeArchetypeInstance$koin_core", "(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;", "resolveInstance", "instanceContext", "resolveInstance$koin_core", "(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;", "scopeDeclaredInstance", "instance", "scopeID", "Lorg/koin/core/scope/ScopeID;", "secondaryTypes", "", "holdInstance", "(Ljava/lang/Object;Lorg/koin/core/qualifier/Qualifier;Ljava/lang/String;Lorg/koin/core/qualifier/Qualifier;Ljava/util/List;ZZ)V", "declareRootInstance", "(Ljava/lang/Object;Lorg/koin/core/qualifier/Qualifier;Ljava/util/List;Z)V", "dropScopeInstances", "scope", "Lorg/koin/core/scope/Scope;", "dropScopeInstances$koin_core", "close", "close$koin_core", "getAll", "getAll$koin_core", "unloadModules", "unloadModules$koin_core", "unloadModule", "size", "koin-core"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class InstanceRegistry {
    private final Map<String, InstanceFactory<?>> _instances;
    private final Koin _koin;
    private final Map<Integer, SingleInstanceFactory<?>> eagerInstances;

    public InstanceRegistry(Koin _koin) {
        Intrinsics.checkNotNullParameter(_koin, "_koin");
        this._koin = _koin;
        this._instances = KoinPlatformTools.INSTANCE.safeHashMap();
        this.eagerInstances = KoinPlatformTools.INSTANCE.safeHashMap();
    }

    public final Koin get_koin() {
        return this._koin;
    }

    public final Map<String, InstanceFactory<?>> getInstances() {
        return this._instances;
    }

    public final void loadModules$koin_core(Set<Module> modules, boolean allowOverride) {
        Intrinsics.checkNotNullParameter(modules, "modules");
        Set<Module> $this$forEach$iv = modules;
        for (Object element$iv : $this$forEach$iv) {
            Module module = (Module) element$iv;
            loadModule(module, allowOverride);
            addAllEagerInstances(module);
        }
    }

    private final void addAllEagerInstances(Module module) {
        Iterable $this$forEach$iv = module.getEagerInstances();
        for (Object element$iv : $this$forEach$iv) {
            SingleInstanceFactory<?> singleInstanceFactory = (SingleInstanceFactory) element$iv;
            this.eagerInstances.put(Integer.valueOf(singleInstanceFactory.getBeanDefinition().hashCode()), singleInstanceFactory);
        }
    }

    public final void createAllEagerInstances$koin_core() {
        SingleInstanceFactory[] singleInstanceFactoryArr = (SingleInstanceFactory[]) this.eagerInstances.values().toArray(new SingleInstanceFactory[0]);
        ArrayList instances = CollectionsKt.arrayListOf(Arrays.copyOf(singleInstanceFactoryArr, singleInstanceFactoryArr.length));
        this.eagerInstances.clear();
        createEagerInstances(instances);
    }

    private final void loadModule(Module module, boolean allowOverride) {
        Map $this$forEach$iv = module.getMappings();
        for (Map.Entry<String, InstanceFactory<?>> entry : $this$forEach$iv.entrySet()) {
            String mapping = entry.getKey();
            InstanceFactory<?> value = entry.getValue();
            boolean z = true;
            boolean hasFactoryAllowOverride = Intrinsics.areEqual((Object) value.getBeanDefinition().getAllowOverride(), (Object) true);
            if (!allowOverride && !hasFactoryAllowOverride) {
                z = false;
            }
            boolean override = z;
            saveMapping$default(this, override, mapping, value, false, 8, null);
        }
    }

    public static /* synthetic */ void saveMapping$default(InstanceRegistry instanceRegistry, boolean z, String str, InstanceFactory instanceFactory, boolean z2, int i, Object obj) {
        if ((i & 8) != 0) {
            z2 = true;
        }
        instanceRegistry.saveMapping(z, str, instanceFactory, z2);
    }

    public final void saveMapping(boolean allowOverride, String mapping, InstanceFactory<?> factory, boolean logWarning) {
        Object element$iv;
        Intrinsics.checkNotNullParameter(mapping, "mapping");
        Intrinsics.checkNotNullParameter(factory, "factory");
        if (this._instances.get(mapping) != null) {
            if (!allowOverride) {
                ModuleKt.throwOverrideError(factory, mapping);
            } else if (logWarning) {
                this._koin.getLogger().warn("(+) override index '" + mapping + "' -> '" + factory.getBeanDefinition() + '\'');
                Iterable $this$firstOrNull$iv = this.eagerInstances.values();
                Iterator it = $this$firstOrNull$iv.iterator();
                while (true) {
                    if (it.hasNext()) {
                        element$iv = it.next();
                        SingleInstanceFactory it2 = (SingleInstanceFactory) element$iv;
                        if (Intrinsics.areEqual(it2.getBeanDefinition(), factory.getBeanDefinition())) {
                            break;
                        }
                    } else {
                        element$iv = null;
                        break;
                    }
                }
                SingleInstanceFactory existingFactory = (SingleInstanceFactory) element$iv;
                if (existingFactory != null) {
                    this.eagerInstances.remove(Integer.valueOf(factory.getBeanDefinition().hashCode()));
                }
            }
        }
        this._koin.getLogger().debug("(+) index '" + mapping + "' -> '" + factory.getBeanDefinition() + '\'');
        this._instances.put(mapping, factory);
    }

    private final void createEagerInstances(Collection<? extends SingleInstanceFactory<?>> instances) {
        ResolutionContext defaultContext = new ResolutionContext(this._koin.getLogger(), this._koin.getScopeRegistry().getRootScope(), Reflection.getOrCreateKotlinClass(NoClass.class), null, null, 24, null);
        Collection<? extends SingleInstanceFactory<?>> $this$forEach$iv = instances;
        for (Object element$iv : $this$forEach$iv) {
            SingleInstanceFactory factory = (SingleInstanceFactory) element$iv;
            factory.get(defaultContext);
        }
    }

    public final InstanceFactory<?> resolveDefinition$koin_core(KClass<?> clazz, Qualifier qualifier, Qualifier scopeQualifier) {
        String value;
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        StringBuilder $this$indexKey_u24lambda_u240$iv = new StringBuilder();
        $this$indexKey_u24lambda_u240$iv.append(KClassExtKt.getFullName(clazz));
        $this$indexKey_u24lambda_u240$iv.append(AbstractJsonLexerKt.COLON);
        if (qualifier == null || (value = qualifier.getValue()) == null) {
            value = "";
        }
        $this$indexKey_u24lambda_u240$iv.append(value);
        $this$indexKey_u24lambda_u240$iv.append(AbstractJsonLexerKt.COLON);
        $this$indexKey_u24lambda_u240$iv.append(scopeQualifier);
        String indexKey = $this$indexKey_u24lambda_u240$iv.toString();
        return this._instances.get(indexKey);
    }

    @KoinExperimentalAPI
    public final <T> T resolveScopeArchetypeInstance$koin_core(Qualifier qualifier, KClass<?> klass, ResolutionContext context) {
        Intrinsics.checkNotNullParameter(klass, "klass");
        Intrinsics.checkNotNullParameter(context, "context");
        TypeQualifier scopeArchetype = context.getScope().getScopeArchetype();
        if (scopeArchetype == null) {
            return null;
        }
        context.setScopeArchetype(scopeArchetype);
        return (T) resolveInstance$koin_core(qualifier, klass, scopeArchetype, context);
    }

    public final <T> T resolveInstance$koin_core(Qualifier qualifier, KClass<?> clazz, Qualifier scopeQualifier, ResolutionContext instanceContext) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Intrinsics.checkNotNullParameter(instanceContext, "instanceContext");
        InstanceFactory<?> instanceFactoryResolveDefinition$koin_core = resolveDefinition$koin_core(clazz, qualifier, scopeQualifier);
        if (instanceFactoryResolveDefinition$koin_core == null) {
            return null;
        }
        try {
            T t = (T) instanceFactoryResolveDefinition$koin_core.get(instanceContext);
            if (t == null) {
                return null;
            }
            return t;
        } catch (MissingScopeValueException e) {
            return null;
        }
    }

    public static /* synthetic */ void scopeDeclaredInstance$default(InstanceRegistry $this, Object instance, Qualifier scopeQualifier, String scopeID, Qualifier qualifier, List secondaryTypes, boolean allowOverride, boolean holdInstance, int i, Object obj) {
        String value;
        String value2;
        Qualifier qualifier2 = (i & 8) != 0 ? null : qualifier;
        List secondaryTypes2 = (i & 16) != 0 ? CollectionsKt.emptyList() : secondaryTypes;
        boolean allowOverride2 = (i & 32) != 0 ? true : allowOverride;
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Intrinsics.checkNotNullParameter(scopeID, "scopeID");
        Intrinsics.checkNotNullParameter(secondaryTypes2, "secondaryTypes");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        KClass primaryType = Reflection.getOrCreateKotlinClass(Object.class);
        Qualifier typeQualifier$iv = qualifier2;
        StringBuilder sb = new StringBuilder();
        StringBuilder $this$indexKey_u24lambda_u240$iv = sb;
        Qualifier qualifier3 = qualifier2;
        $this$indexKey_u24lambda_u240$iv.append(KClassExtKt.getFullName(primaryType));
        $this$indexKey_u24lambda_u240$iv.append(AbstractJsonLexerKt.COLON);
        $this$indexKey_u24lambda_u240$iv.append((typeQualifier$iv == null || (value2 = typeQualifier$iv.getValue()) == null) ? "" : value2);
        $this$indexKey_u24lambda_u240$iv.append(AbstractJsonLexerKt.COLON);
        $this$indexKey_u24lambda_u240$iv.append(scopeQualifier);
        String indexKey = sb.toString();
        InstanceFactory<?> instanceFactory = $this.getInstances().get(indexKey);
        ScopedInstanceFactory existingFactory = instanceFactory instanceof ScopedInstanceFactory ? (ScopedInstanceFactory) instanceFactory : null;
        if (existingFactory != null) {
            existingFactory.saveValue(scopeID, instance);
            return;
        }
        Intrinsics.needClassReification();
        Function2 definitionFunction = !holdInstance ? new InstanceRegistry$scopeDeclaredInstance$definitionFunction$1(primaryType) : new InstanceRegistry$scopeDeclaredInstance$definitionFunction$2(instance);
        Kind kind$iv = Kind.Scoped;
        List secondaryTypes$iv = secondaryTypes2;
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        BeanDefinition def = new BeanDefinition(scopeQualifier, Reflection.getOrCreateKotlinClass(Object.class), qualifier3, definitionFunction, kind$iv, secondaryTypes$iv, null, 64, null);
        ScopedInstanceFactory factory = new ScopedInstanceFactory(def, holdInstance);
        boolean hasFactoryAllowOverride = Intrinsics.areEqual((Object) factory.getBeanDefinition().getAllowOverride(), (Object) true);
        saveMapping$default($this, allowOverride2 || hasFactoryAllowOverride, indexKey, factory, false, 8, null);
        Iterable $this$forEach$iv = def.getSecondaryTypes();
        for (Object element$iv : $this$forEach$iv) {
            KClass clazz = (KClass) element$iv;
            Qualifier typeQualifier$iv2 = def.getQualifier();
            Qualifier scopeQualifier$iv = def.getScopeQualifier();
            StringBuilder sb2 = new StringBuilder();
            StringBuilder $this$indexKey_u24lambda_u240$iv2 = sb2;
            $this$indexKey_u24lambda_u240$iv2.append(KClassExtKt.getFullName(clazz));
            $this$indexKey_u24lambda_u240$iv2.append(AbstractJsonLexerKt.COLON);
            if (typeQualifier$iv2 == null || (value = typeQualifier$iv2.getValue()) == null) {
                value = "";
            }
            $this$indexKey_u24lambda_u240$iv2.append(value);
            $this$indexKey_u24lambda_u240$iv2.append(AbstractJsonLexerKt.COLON);
            $this$indexKey_u24lambda_u240$iv2.append(scopeQualifier$iv);
            String index = sb2.toString();
            saveMapping$default($this, allowOverride2 || hasFactoryAllowOverride, index, factory, false, 8, null);
        }
        factory.saveValue(scopeID, instance);
    }

    public final /* synthetic */ <T> void scopeDeclaredInstance(T instance, Qualifier scopeQualifier, String scopeID, Qualifier qualifier, List<? extends KClass<?>> secondaryTypes, boolean allowOverride, boolean holdInstance) {
        String value;
        String value2;
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Intrinsics.checkNotNullParameter(scopeID, "scopeID");
        Intrinsics.checkNotNullParameter(secondaryTypes, "secondaryTypes");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        KClass primaryType = Reflection.getOrCreateKotlinClass(Object.class);
        StringBuilder sb = new StringBuilder();
        StringBuilder $this$indexKey_u24lambda_u240$iv = sb;
        $this$indexKey_u24lambda_u240$iv.append(KClassExtKt.getFullName(primaryType));
        $this$indexKey_u24lambda_u240$iv.append(AbstractJsonLexerKt.COLON);
        $this$indexKey_u24lambda_u240$iv.append((qualifier == null || (value2 = qualifier.getValue()) == null) ? "" : value2);
        $this$indexKey_u24lambda_u240$iv.append(AbstractJsonLexerKt.COLON);
        $this$indexKey_u24lambda_u240$iv.append(scopeQualifier);
        String indexKey = sb.toString();
        InstanceFactory<?> instanceFactory = getInstances().get(indexKey);
        ScopedInstanceFactory existingFactory = instanceFactory instanceof ScopedInstanceFactory ? (ScopedInstanceFactory) instanceFactory : null;
        if (existingFactory != null) {
            existingFactory.saveValue(scopeID, instance);
            return;
        }
        Intrinsics.needClassReification();
        Function2 definitionFunction = !holdInstance ? new InstanceRegistry$scopeDeclaredInstance$definitionFunction$1(primaryType) : new InstanceRegistry$scopeDeclaredInstance$definitionFunction$2(instance);
        Kind kind$iv = Kind.Scoped;
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        BeanDefinition def = new BeanDefinition(scopeQualifier, Reflection.getOrCreateKotlinClass(Object.class), qualifier, definitionFunction, kind$iv, secondaryTypes, null, 64, null);
        ScopedInstanceFactory factory = new ScopedInstanceFactory(def, holdInstance);
        boolean hasFactoryAllowOverride = Intrinsics.areEqual((Object) factory.getBeanDefinition().getAllowOverride(), (Object) true);
        saveMapping$default(this, allowOverride || hasFactoryAllowOverride, indexKey, factory, false, 8, null);
        Iterable $this$forEach$iv = def.getSecondaryTypes();
        for (Object element$iv : $this$forEach$iv) {
            KClass clazz = (KClass) element$iv;
            Qualifier typeQualifier$iv = def.getQualifier();
            Qualifier scopeQualifier$iv = def.getScopeQualifier();
            StringBuilder sb2 = new StringBuilder();
            StringBuilder $this$indexKey_u24lambda_u240$iv2 = sb2;
            $this$indexKey_u24lambda_u240$iv2.append(KClassExtKt.getFullName(clazz));
            $this$indexKey_u24lambda_u240$iv2.append(AbstractJsonLexerKt.COLON);
            if (typeQualifier$iv == null || (value = typeQualifier$iv.getValue()) == null) {
                value = "";
            }
            $this$indexKey_u24lambda_u240$iv2.append(value);
            $this$indexKey_u24lambda_u240$iv2.append(AbstractJsonLexerKt.COLON);
            $this$indexKey_u24lambda_u240$iv2.append(scopeQualifier$iv);
            String index = sb2.toString();
            saveMapping$default(this, allowOverride || hasFactoryAllowOverride, index, factory, false, 8, null);
        }
        factory.saveValue(scopeID, instance);
    }

    public static /* synthetic */ void declareRootInstance$default(InstanceRegistry $this, Object instance, Qualifier qualifier, List secondaryTypes, boolean allowOverride, int i, Object obj) {
        String value;
        String value2;
        Qualifier qualifier2 = (i & 2) != 0 ? null : qualifier;
        List secondaryTypes2 = (i & 4) != 0 ? CollectionsKt.emptyList() : secondaryTypes;
        boolean allowOverride2 = (i & 8) != 0 ? true : allowOverride;
        Intrinsics.checkNotNullParameter(secondaryTypes2, "secondaryTypes");
        Qualifier rootQualifier = $this.get_koin().getScopeRegistry().getRootScope().getScopeQualifier();
        Kind kind$iv = Kind.Scoped;
        Intrinsics.needClassReification();
        Function2 definition$iv = new InstanceRegistry$declareRootInstance$def$1(instance);
        Qualifier qualifier$iv = qualifier2;
        List secondaryTypes$iv = secondaryTypes2;
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        BeanDefinition def = new BeanDefinition(rootQualifier, Reflection.getOrCreateKotlinClass(Object.class), qualifier$iv, definition$iv, kind$iv, secondaryTypes$iv, null, 64, null);
        SingleInstanceFactory factory = new SingleInstanceFactory(def);
        KClass<?> primaryType = def.getPrimaryType();
        Qualifier typeQualifier$iv = def.getQualifier();
        Qualifier scopeQualifier$iv = def.getScopeQualifier();
        StringBuilder sb = new StringBuilder();
        StringBuilder $this$indexKey_u24lambda_u240$iv = sb;
        $this$indexKey_u24lambda_u240$iv.append(KClassExtKt.getFullName(primaryType));
        $this$indexKey_u24lambda_u240$iv.append(AbstractJsonLexerKt.COLON);
        $this$indexKey_u24lambda_u240$iv.append((typeQualifier$iv == null || (value2 = typeQualifier$iv.getValue()) == null) ? "" : value2);
        $this$indexKey_u24lambda_u240$iv.append(AbstractJsonLexerKt.COLON);
        $this$indexKey_u24lambda_u240$iv.append(scopeQualifier$iv);
        String indexKey = sb.toString();
        saveMapping$default($this, allowOverride2, indexKey, factory, false, 8, null);
        Iterable $this$forEach$iv = def.getSecondaryTypes();
        for (Object element$iv : $this$forEach$iv) {
            KClass clazz = (KClass) element$iv;
            Qualifier typeQualifier$iv2 = def.getQualifier();
            Qualifier scopeQualifier$iv2 = def.getScopeQualifier();
            StringBuilder sb2 = new StringBuilder();
            StringBuilder $this$indexKey_u24lambda_u240$iv2 = sb2;
            Qualifier qualifier3 = qualifier2;
            $this$indexKey_u24lambda_u240$iv2.append(KClassExtKt.getFullName(clazz));
            $this$indexKey_u24lambda_u240$iv2.append(AbstractJsonLexerKt.COLON);
            if (typeQualifier$iv2 == null || (value = typeQualifier$iv2.getValue()) == null) {
                value = "";
            }
            $this$indexKey_u24lambda_u240$iv2.append(value);
            $this$indexKey_u24lambda_u240$iv2.append(AbstractJsonLexerKt.COLON);
            $this$indexKey_u24lambda_u240$iv2.append(scopeQualifier$iv2);
            String index = sb2.toString();
            saveMapping$default($this, allowOverride2, index, factory, false, 8, null);
            qualifier2 = qualifier3;
        }
    }

    public final /* synthetic */ <T> void declareRootInstance(T instance, Qualifier qualifier, List<? extends KClass<?>> secondaryTypes, boolean allowOverride) {
        String value;
        String value2;
        Intrinsics.checkNotNullParameter(secondaryTypes, "secondaryTypes");
        Qualifier rootQualifier = get_koin().getScopeRegistry().getRootScope().getScopeQualifier();
        Kind kind$iv = Kind.Scoped;
        Intrinsics.needClassReification();
        Function2 definition$iv = new InstanceRegistry$declareRootInstance$def$1(instance);
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        BeanDefinition def = new BeanDefinition(rootQualifier, Reflection.getOrCreateKotlinClass(Object.class), qualifier, definition$iv, kind$iv, secondaryTypes, null, 64, null);
        SingleInstanceFactory factory = new SingleInstanceFactory(def);
        KClass<?> primaryType = def.getPrimaryType();
        Qualifier typeQualifier$iv = def.getQualifier();
        Qualifier scopeQualifier$iv = def.getScopeQualifier();
        StringBuilder sb = new StringBuilder();
        StringBuilder $this$indexKey_u24lambda_u240$iv = sb;
        $this$indexKey_u24lambda_u240$iv.append(KClassExtKt.getFullName(primaryType));
        $this$indexKey_u24lambda_u240$iv.append(AbstractJsonLexerKt.COLON);
        if (typeQualifier$iv == null || (value = typeQualifier$iv.getValue()) == null) {
            value = "";
        }
        $this$indexKey_u24lambda_u240$iv.append(value);
        $this$indexKey_u24lambda_u240$iv.append(AbstractJsonLexerKt.COLON);
        $this$indexKey_u24lambda_u240$iv.append(scopeQualifier$iv);
        String indexKey = sb.toString();
        saveMapping$default(this, allowOverride, indexKey, factory, false, 8, null);
        Iterable $this$forEach$iv = def.getSecondaryTypes();
        for (Object element$iv : $this$forEach$iv) {
            KClass clazz = (KClass) element$iv;
            Qualifier typeQualifier$iv2 = def.getQualifier();
            Qualifier scopeQualifier$iv2 = def.getScopeQualifier();
            StringBuilder sb2 = new StringBuilder();
            StringBuilder $this$indexKey_u24lambda_u240$iv2 = sb2;
            $this$indexKey_u24lambda_u240$iv2.append(KClassExtKt.getFullName(clazz));
            $this$indexKey_u24lambda_u240$iv2.append(AbstractJsonLexerKt.COLON);
            if (typeQualifier$iv2 == null || (value2 = typeQualifier$iv2.getValue()) == null) {
                value2 = "";
            }
            $this$indexKey_u24lambda_u240$iv2.append(value2);
            $this$indexKey_u24lambda_u240$iv2.append(AbstractJsonLexerKt.COLON);
            $this$indexKey_u24lambda_u240$iv2.append(scopeQualifier$iv2);
            String index = sb2.toString();
            saveMapping$default(this, allowOverride, index, factory, false, 8, null);
        }
    }

    public final void dropScopeInstances$koin_core(Scope scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        InstanceFactory[] factories = (InstanceFactory[]) this._instances.values().toArray(new InstanceFactory[0]);
        Collection destination$iv$iv = new ArrayList();
        for (InstanceFactory instanceFactory : factories) {
            if (instanceFactory instanceof ScopedInstanceFactory) {
                destination$iv$iv.add(instanceFactory);
            }
        }
        Iterable $this$forEach$iv = (List) destination$iv$iv;
        for (Object element$iv : $this$forEach$iv) {
            ScopedInstanceFactory factory = (ScopedInstanceFactory) element$iv;
            factory.drop(scope);
        }
    }

    public final void close$koin_core() {
        InstanceFactory[] factories = (InstanceFactory[]) this._instances.values().toArray(new InstanceFactory[0]);
        for (InstanceFactory instanceFactory : factories) {
            instanceFactory.dropAll();
        }
        this._instances.clear();
    }

    public final <T> List<T> getAll$koin_core(KClass<?> clazz, ResolutionContext instanceContext) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(instanceContext, "instanceContext");
        Iterable $this$filter$iv = this._instances.values();
        Collection destination$iv$iv = new ArrayList();
        for (Object element$iv$iv : $this$filter$iv) {
            InstanceFactory factory = (InstanceFactory) element$iv$iv;
            if ((Intrinsics.areEqual(factory.getBeanDefinition().getScopeQualifier(), instanceContext.getScope().getScopeQualifier()) || Intrinsics.areEqual(factory.getBeanDefinition().getScopeQualifier(), instanceContext.getScope().getScopeArchetype())) && (Intrinsics.areEqual(factory.getBeanDefinition().getPrimaryType(), clazz) || factory.getBeanDefinition().getSecondaryTypes().contains(clazz))) {
                destination$iv$iv.add(element$iv$iv);
            }
        }
        Iterable factories = CollectionsKt.distinct((List) destination$iv$iv);
        Iterable $this$mapNotNull$iv = factories;
        Collection destination$iv$iv2 = new ArrayList();
        for (Object element$iv$iv$iv : $this$mapNotNull$iv) {
            InstanceFactory it = (InstanceFactory) element$iv$iv$iv;
            Object obj = it.get(instanceContext);
            if (obj == null) {
                obj = null;
            }
            if (obj != null) {
                Object it$iv$iv = obj;
                destination$iv$iv2.add(it$iv$iv);
            }
        }
        return (List) destination$iv$iv2;
    }

    public final void unloadModules$koin_core(Set<Module> modules) {
        Intrinsics.checkNotNullParameter(modules, "modules");
        Set<Module> $this$forEach$iv = modules;
        for (Object element$iv : $this$forEach$iv) {
            Module it = (Module) element$iv;
            unloadModule(it);
        }
    }

    private final void unloadModule(Module module) {
        Iterable iterableKeySet = module.getMappings().keySet();
        Intrinsics.checkNotNullExpressionValue(iterableKeySet, "<get-keys>(...)");
        Iterable $this$forEach$iv = iterableKeySet;
        for (Object element$iv : $this$forEach$iv) {
            String mapping = (String) element$iv;
            InstanceFactory<?> instanceFactory = this._instances.get(mapping);
            if (instanceFactory != null) {
                instanceFactory.dropAll();
            }
            this._instances.remove(mapping);
        }
    }

    public final int size() {
        return this._instances.size();
    }
}
