package org.koin.core.resolution;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.core.error.NoDefinitionFoundException;
import org.koin.core.instance.InstanceFactory;
import org.koin.core.instance.ResolutionContext;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.qualifier.TypeQualifier;
import org.koin.core.scope.Scope;
import org.koin.ext.KClassExtKt;

/* JADX INFO: compiled from: CoreResolverV2.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\bH\u0016J#\u0010\u000f\u001a\u0002H\u0010\"\u0004\b\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016¢\u0006\u0002\u0010\u0015J%\u0010\u0016\u001a\u0004\u0018\u0001H\u0010\"\u0004\b\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002¢\u0006\u0002\u0010\u0015J%\u0010\u0017\u001a\u0004\u0018\u0001H\u0010\"\u0004\b\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0014H\u0002¢\u0006\u0002\u0010\u0015J%\u0010\u0019\u001a\u0004\u0018\u0001H\u0010\"\u0004\b\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0014H\u0002¢\u0006\u0002\u0010\u0015J\u001e\u0010\u001a\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001b2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0014H\u0002J%\u0010\u001c\u001a\u0004\u0018\u0001H\u0010\"\u0004\b\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0014H\u0002¢\u0006\u0002\u0010\u0015J%\u0010\u001d\u001a\u0004\u0018\u0001H\u0010\"\u0004\b\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0014H\u0002¢\u0006\u0002\u0010\u0015J\u001e\u0010\u001e\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001b2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0014H\u0002J\u001e\u0010\u001f\u001a\u0004\u0018\u0001H\u0010\"\u0004\b\u0000\u0010\u00102\u0006\u0010\u0018\u001a\u00020\u0014H\u0082\b¢\u0006\u0002\u0010 J&\u0010!\u001a\u0004\u0018\u0001H\u0010\"\u0004\b\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0014H\u0082\b¢\u0006\u0002\u0010\u0015J$\u0010\"\u001a\u0002H\u0010\"\u0004\b\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0014H\u0082\b¢\u0006\u0002\u0010\u0015J%\u0010#\u001a\u0004\u0018\u0001H\u0010\"\u0004\b\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0014H\u0002¢\u0006\u0002\u0010\u0015R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\b0\u0007j\b\u0012\u0004\u0012\u00020\b`\tX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006$"}, d2 = {"Lorg/koin/core/resolution/CoreResolverV2;", "Lorg/koin/core/resolution/InstanceResolver;", "_koin", "Lorg/koin/core/Koin;", "<init>", "(Lorg/koin/core/Koin;)V", "extendedResolution", "Ljava/util/ArrayList;", "Lorg/koin/core/resolution/ResolutionExtension;", "Lkotlin/collections/ArrayList;", "getExtendedResolution", "()Ljava/util/ArrayList;", "addResolutionExtension", "", "resolutionExtension", "resolveFromContext", ExifInterface.GPS_DIRECTION_TRUE, "scope", "Lorg/koin/core/scope/Scope;", "instanceContext", "Lorg/koin/core/instance/ResolutionContext;", "(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;", "resolveFromContextOrNull", "resolveFromRegistry", "ctx", "resolveDirectDefinition", "resolveFromScopeArchetype", "Lorg/koin/core/instance/InstanceFactory;", "resolveFromScopeSource", "resolveFromLinkedScopes", "findDefinitionInScope", "resolveFromInjectedParameters", "(Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;", "resolveFromStackedParameters", "throwNoDefinitionFound", "resolveInExtensions", "koin-core"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CoreResolverV2 implements InstanceResolver {
    private final Koin _koin;
    private final ArrayList<ResolutionExtension> extendedResolution;

    public CoreResolverV2(Koin _koin) {
        Intrinsics.checkNotNullParameter(_koin, "_koin");
        this._koin = _koin;
        this.extendedResolution = new ArrayList<>();
    }

    @Override // org.koin.core.resolution.InstanceResolver
    public ArrayList<ResolutionExtension> getExtendedResolution() {
        return this.extendedResolution;
    }

    @Override // org.koin.core.resolution.InstanceResolver
    public void addResolutionExtension(ResolutionExtension resolutionExtension) {
        Intrinsics.checkNotNullParameter(resolutionExtension, "resolutionExtension");
        getExtendedResolution().add(resolutionExtension);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.koin.core.resolution.InstanceResolver
    public <T> T resolveFromContext(Scope scope, ResolutionContext instanceContext) throws NoDefinitionFoundException {
        String str;
        String str2;
        ResolutionContext resolutionContext;
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(instanceContext, "instanceContext");
        T t = (T) resolveFromContextOrNull(scope, instanceContext);
        if (t != null) {
            return t;
        }
        ResolutionContext resolutionContext2 = instanceContext;
        Qualifier qualifier = resolutionContext2.getQualifier();
        String string = "";
        if (qualifier == null || (str = " and qualifier '" + qualifier + '\'') == null) {
            str = "";
        }
        if (!Intrinsics.areEqual(resolutionContext2.getScope(), scope)) {
            str2 = "scope '" + scope + "' (resolution context scope: '" + resolutionContext2.getScope() + "')";
        } else {
            str2 = "scope '" + scope + '\'';
        }
        List<String> linkedScopeIds = scope.getLinkedScopeIds();
        if (!linkedScopeIds.isEmpty()) {
            StringBuilder sbAppend = new StringBuilder().append(" Searched scopes: ['").append(scope.getId()).append("'] -> ");
            List<String> list = linkedScopeIds;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add("['" + ((String) it.next()) + "']");
                resolutionContext2 = resolutionContext2;
            }
            resolutionContext = resolutionContext2;
            string = sbAppend.append(arrayList).toString();
        } else {
            resolutionContext = resolutionContext2;
        }
        throw new NoDefinitionFoundException("No definition found for type '" + KClassExtKt.getFullName(resolutionContext.getClazz()) + '\'' + str + " on " + str2 + '.' + string + ". Check or add definition for type '" + KClassExtKt.getFullName(resolutionContext.getClazz()) + '\'' + str + " in scope '" + scope.getScopeQualifier() + "'.");
    }

    private final <T> T resolveFromContextOrNull(Scope scope, ResolutionContext instanceContext) {
        ParametersHolder parametersHolderFirstOrNull;
        Object orNull = null;
        T t = (instanceContext.getParameters() == null || instanceContext.getParameters().isEmpty()) ? null : (T) instanceContext.getParameters().getOrNull(instanceContext.getClazz());
        if (t != null) {
            return t;
        }
        ThreadLocal<ArrayDeque<ParametersHolder>> threadLocal = scope.get_parameterStack$koin_core();
        if (threadLocal != null) {
            ArrayDeque<ParametersHolder> arrayDeque = threadLocal.get();
            ArrayDeque<ParametersHolder> arrayDeque2 = arrayDeque;
            if (!(arrayDeque2 == null || arrayDeque2.isEmpty()) && (parametersHolderFirstOrNull = arrayDeque.firstOrNull()) != null) {
                orNull = parametersHolderFirstOrNull.getOrNull(instanceContext.getClazz());
            }
        }
        if (orNull != null) {
            return (T) orNull;
        }
        T t2 = (T) resolveFromRegistry(scope, instanceContext);
        return t2 == null ? (T) resolveInExtensions(scope, instanceContext) : t2;
    }

    private final <T> T resolveFromRegistry(Scope scope, ResolutionContext ctx) {
        T t = (T) resolveDirectDefinition(scope, ctx);
        if (t != null) {
            return t;
        }
        T t2 = (T) resolveFromScopeSource(scope, ctx);
        if (t2 != null) {
            return t2;
        }
        return (T) resolveFromLinkedScopes(scope, ctx);
    }

    private final <T> T resolveDirectDefinition(Scope scope, ResolutionContext ctx) {
        InstanceFactory<?> instanceFactoryResolveDefinition$koin_core = this._koin.getInstanceRegistry().resolveDefinition$koin_core(ctx.getClazz(), ctx.getQualifier(), scope.getScopeQualifier());
        if (instanceFactoryResolveDefinition$koin_core == null) {
            instanceFactoryResolveDefinition$koin_core = resolveFromScopeArchetype(scope, ctx);
        }
        if (instanceFactoryResolveDefinition$koin_core != null) {
            return (T) instanceFactoryResolveDefinition$koin_core.get(ctx);
        }
        return null;
    }

    private final InstanceFactory<?> resolveFromScopeArchetype(Scope scope, ResolutionContext ctx) {
        TypeQualifier archetype;
        if (scope.getIsRoot() || (archetype = scope.getScopeArchetype()) == null) {
            return null;
        }
        ctx.setScopeArchetype(archetype);
        return this._koin.getInstanceRegistry().resolveDefinition$koin_core(ctx.getClazz(), ctx.getQualifier(), archetype);
    }

    private final <T> T resolveFromScopeSource(Scope scope, ResolutionContext ctx) {
        T t;
        if (scope.getIsRoot() || ctx.getQualifier() != null || !ctx.getClazz().isInstance(scope.getSourceValue()) || (t = (T) scope.getSourceValue()) == null) {
            return null;
        }
        return t;
    }

    private final <T> T resolveFromLinkedScopes(Scope scope, ResolutionContext ctx) {
        T t;
        Set<Scope> setFlatten = CoreResolverKt.flatten(scope.getLinkedScopes$koin_core());
        if (setFlatten.isEmpty()) {
            return null;
        }
        for (Scope scope2 : setFlatten) {
            InstanceFactory<?> instanceFactoryFindDefinitionInScope = findDefinitionInScope(scope2, ctx);
            if (instanceFactoryFindDefinitionInScope != null) {
                ResolutionContext resolutionContextNewContextForScope = ctx.newContextForScope(scope2);
                if (scope2.getScopeArchetype() != null && !scope2.getIsRoot()) {
                    resolutionContextNewContextForScope.setScopeArchetype(scope2.getScopeArchetype());
                }
                ArrayDeque<ParametersHolder> arrayDequeOnParameterOnStack$koin_core = resolutionContextNewContextForScope.getParameters() != null ? resolutionContextNewContextForScope.getScope().onParameterOnStack$koin_core(resolutionContextNewContextForScope.getParameters()) : null;
                T t2 = (T) instanceFactoryFindDefinitionInScope.get(resolutionContextNewContextForScope);
                if (arrayDequeOnParameterOnStack$koin_core != null) {
                    resolutionContextNewContextForScope.getScope().clearParameterStack$koin_core(arrayDequeOnParameterOnStack$koin_core);
                }
                return t2;
            }
            ThreadLocal<ArrayDeque<ParametersHolder>> threadLocal = scope2.get_parameterStack$koin_core();
            if (threadLocal == null) {
                t = null;
            } else {
                ArrayDeque<ParametersHolder> arrayDeque = threadLocal.get();
                ArrayDeque<ParametersHolder> arrayDeque2 = arrayDeque;
                if (arrayDeque2 == null || arrayDeque2.isEmpty()) {
                    t = null;
                } else {
                    ParametersHolder parametersHolderFirstOrNull = arrayDeque.firstOrNull();
                    t = parametersHolderFirstOrNull != null ? (T) parametersHolderFirstOrNull.getOrNull(ctx.getClazz()) : null;
                }
            }
            if (t != null) {
                return t;
            }
        }
        return null;
    }

    private final InstanceFactory<?> findDefinitionInScope(Scope scope, ResolutionContext ctx) {
        InstanceFactory<?> instanceFactoryResolveDefinition$koin_core;
        TypeQualifier archetype = scope.getScopeArchetype();
        if (archetype != null && (instanceFactoryResolveDefinition$koin_core = this._koin.getInstanceRegistry().resolveDefinition$koin_core(ctx.getClazz(), ctx.getQualifier(), archetype)) != null) {
            return instanceFactoryResolveDefinition$koin_core;
        }
        return this._koin.getInstanceRegistry().resolveDefinition$koin_core(ctx.getClazz(), ctx.getQualifier(), scope.getScopeQualifier());
    }

    private final <T> T resolveFromInjectedParameters(ResolutionContext ctx) {
        if (ctx.getParameters() == null || ctx.getParameters().isEmpty()) {
            return null;
        }
        return (T) ctx.getParameters().getOrNull(ctx.getClazz());
    }

    private final <T> T resolveFromStackedParameters(Scope scope, ResolutionContext ctx) {
        ParametersHolder parametersHolderFirstOrNull;
        ThreadLocal<ArrayDeque<ParametersHolder>> threadLocal = scope.get_parameterStack$koin_core();
        if (threadLocal == null) {
            return null;
        }
        ArrayDeque<ParametersHolder> arrayDeque = threadLocal.get();
        ArrayDeque<ParametersHolder> arrayDeque2 = arrayDeque;
        if ((arrayDeque2 == null || arrayDeque2.isEmpty()) || (parametersHolderFirstOrNull = arrayDeque.firstOrNull()) == null) {
            return null;
        }
        return (T) parametersHolderFirstOrNull.getOrNull(ctx.getClazz());
    }

    private final <T> T throwNoDefinitionFound(Scope scope, ResolutionContext ctx) throws NoDefinitionFoundException {
        String qualifierString;
        String scopeInfo;
        Qualifier it = ctx.getQualifier();
        String searchedScopes = "";
        if (it == null || (qualifierString = " and qualifier '" + it + '\'') == null) {
            qualifierString = "";
        }
        if (!Intrinsics.areEqual(ctx.getScope(), scope)) {
            scopeInfo = "scope '" + scope + "' (resolution context scope: '" + ctx.getScope() + "')";
        } else {
            scopeInfo = "scope '" + scope + '\'';
        }
        Iterable linkedScopeIds = scope.getLinkedScopeIds();
        if (!((Collection) linkedScopeIds).isEmpty()) {
            StringBuilder sbAppend = new StringBuilder().append(" Searched scopes: ['").append(scope.getId()).append("'] -> ");
            Iterable $this$map$iv = linkedScopeIds;
            Collection destination$iv$iv = new ArrayList(CollectionsKt.collectionSizeOrDefault($this$map$iv, 10));
            for (Object item$iv$iv : $this$map$iv) {
                destination$iv$iv.add("['" + ((String) item$iv$iv) + "']");
            }
            searchedScopes = sbAppend.append((List) destination$iv$iv).toString();
        }
        throw new NoDefinitionFoundException("No definition found for type '" + KClassExtKt.getFullName(ctx.getClazz()) + '\'' + qualifierString + " on " + scopeInfo + '.' + searchedScopes + ". Check or add definition for type '" + KClassExtKt.getFullName(ctx.getClazz()) + '\'' + qualifierString + " in scope '" + scope.getScopeQualifier() + "'.");
    }

    private final <T> T resolveInExtensions(Scope scope, ResolutionContext ctx) {
        for (ResolutionExtension resolutionExtension : getExtendedResolution()) {
            ctx.getLogger().debug("|- ['" + resolutionExtension.getName() + "'] ?");
            T t = (T) resolutionExtension.resolve(scope, ctx);
            if (t != null) {
                return t;
            }
        }
        return null;
    }
}
