package org.koin.core.resolution;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.core.annotation.KoinExperimentalAPI;
import org.koin.core.error.NoDefinitionFoundException;
import org.koin.core.instance.ResolutionContext;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.ext.KClassExtKt;

/* JADX INFO: compiled from: CoreResolver.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\r\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\bH\u0016J#\u0010\u000f\u001a\u0002H\u0010\"\u0004\b\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016¢\u0006\u0002\u0010\u0015J/\u0010\u0016\u001a\u0004\u0018\u0001H\u0010\"\u0004\b\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0017\u001a\u00020\u0018H\u0002¢\u0006\u0002\u0010\u0019J%\u0010\u001a\u001a\u0004\u0018\u0001H\u0010\"\u0004\b\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u0014H\u0002¢\u0006\u0002\u0010\u0015J\u001e\u0010\u001c\u001a\u0004\u0018\u0001H\u0010\"\u0004\b\u0000\u0010\u00102\u0006\u0010\u001b\u001a\u00020\u0014H\u0082\b¢\u0006\u0002\u0010\u001dJ&\u0010\u001e\u001a\u0004\u0018\u0001H\u0010\"\u0004\b\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u0014H\u0082\b¢\u0006\u0002\u0010\u0015J&\u0010\u001f\u001a\u0004\u0018\u0001H\u0010\"\u0004\b\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u0014H\u0082\b¢\u0006\u0002\u0010\u0015J&\u0010 \u001a\u0004\u0018\u0001H\u0010\"\u0004\b\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u0014H\u0083\b¢\u0006\u0002\u0010\u0015J%\u0010!\u001a\u0004\u0018\u0001H\u0010\"\u0004\b\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u0014H\u0002¢\u0006\u0002\u0010\u0015J%\u0010\"\u001a\u0004\u0018\u0001H\u0010\"\u0004\b\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u0014H\u0002¢\u0006\u0002\u0010\u0015J\u001c\u0010#\u001a\u0002H\u0010\"\u0004\b\u0000\u0010\u00102\u0006\u0010\u001b\u001a\u00020\u0014H\u0082\b¢\u0006\u0002\u0010\u001dJ%\u0010$\u001a\u0004\u0018\u0001H\u0010\"\u0004\b\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u0014H\u0002¢\u0006\u0002\u0010\u0015R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\b0\u0007j\b\u0012\u0004\u0012\u00020\b`\tX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006%"}, d2 = {"Lorg/koin/core/resolution/CoreResolver;", "Lorg/koin/core/resolution/InstanceResolver;", "_koin", "Lorg/koin/core/Koin;", "<init>", "(Lorg/koin/core/Koin;)V", "extendedResolution", "Ljava/util/ArrayList;", "Lorg/koin/core/resolution/ResolutionExtension;", "Lkotlin/collections/ArrayList;", "getExtendedResolution", "()Ljava/util/ArrayList;", "addResolutionExtension", "", "resolutionExtension", "resolveFromContext", ExifInterface.GPS_DIRECTION_TRUE, "scope", "Lorg/koin/core/scope/Scope;", "instanceContext", "Lorg/koin/core/instance/ResolutionContext;", "(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;", "resolveFromContextOrNull", "lookupParent", "", "(Lorg/koin/core/scope/Scope;Lorg/koin/core/instance/ResolutionContext;Z)Ljava/lang/Object;", "resolveFromRegistry", "ctx", "resolveFromInjectedParameters", "(Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;", "resolveFromStackedParameters", "resolveFromScopeSource", "resolveFromScopeArchetype", "resolveFromParentScopes", "findInOtherScope", "throwNoDefinitionFound", "resolveInExtensions", "koin-core"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CoreResolver implements InstanceResolver {
    private final Koin _koin;
    private final ArrayList<ResolutionExtension> extendedResolution;

    public CoreResolver(Koin _koin) {
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

    @Override // org.koin.core.resolution.InstanceResolver
    public <T> T resolveFromContext(Scope scope, ResolutionContext instanceContext) throws NoDefinitionFoundException {
        String str;
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(instanceContext, "instanceContext");
        T t = (T) resolveFromContextOrNull$default(this, scope, instanceContext, false, 4, null);
        if (t != null) {
            return t;
        }
        Qualifier qualifier = instanceContext.getQualifier();
        if (qualifier == null || (str = " and qualifier '" + qualifier + '\'') == null) {
            str = "";
        }
        throw new NoDefinitionFoundException("No definition found for type '" + KClassExtKt.getFullName(instanceContext.getClazz()) + '\'' + str + ". Check your Modules configuration and add missing type and/or qualifier!");
    }

    static /* synthetic */ Object resolveFromContextOrNull$default(CoreResolver coreResolver, Scope scope, ResolutionContext resolutionContext, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        return coreResolver.resolveFromContextOrNull(scope, resolutionContext, z);
    }

    private final <T> T resolveFromContextOrNull(Scope scope, ResolutionContext instanceContext, boolean lookupParent) {
        T t;
        Object orNull;
        T t2;
        T t3;
        Object sourceValue;
        if (instanceContext.getParameters() == null || instanceContext.getParameters().isEmpty()) {
            t = null;
        } else {
            instanceContext.getLogger().debug("|- ? " + instanceContext.getDebugTag() + " look in injected parameters");
            t = (T) instanceContext.getParameters().getOrNull(instanceContext.getClazz());
        }
        if (t != null) {
            return t;
        }
        T t4 = (T) resolveFromRegistry(scope, instanceContext);
        if (t4 != null) {
            return t4;
        }
        ThreadLocal<ArrayDeque<ParametersHolder>> threadLocal = scope.get_parameterStack$koin_core();
        ArrayDeque<ParametersHolder> arrayDeque = threadLocal != null ? threadLocal.get() : null;
        ArrayDeque<ParametersHolder> arrayDeque2 = arrayDeque;
        if (arrayDeque2 == null || arrayDeque2.isEmpty()) {
            orNull = null;
        } else {
            instanceContext.getLogger().debug("|- ? " + instanceContext.getDebugTag() + " look in stack parameters");
            ParametersHolder parametersHolderFirstOrNull = arrayDeque.firstOrNull();
            orNull = parametersHolderFirstOrNull != null ? parametersHolderFirstOrNull.getOrNull(instanceContext.getClazz()) : null;
        }
        if (orNull != null) {
            return (T) orNull;
        }
        if (scope.getIsRoot() || scope.getSourceValue() == null || !instanceContext.getClazz().isInstance(scope.getSourceValue()) || instanceContext.getQualifier() != null) {
            t2 = null;
        } else {
            instanceContext.getLogger().debug("|- ? " + instanceContext.getDebugTag() + " look at scope source");
            t2 = (!instanceContext.getClazz().isInstance(scope.getSourceValue()) || (sourceValue = scope.getSourceValue()) == null) ? null : (T) sourceValue;
        }
        if (t2 != null) {
            return t2;
        }
        if (scope.getIsRoot() || scope.getScopeArchetype() == null) {
            t3 = null;
        } else {
            instanceContext.getLogger().debug("|- ? " + instanceContext.getDebugTag() + " look at scope archetype");
            t3 = (T) this._koin.getInstanceRegistry().resolveScopeArchetypeInstance$koin_core(instanceContext.getQualifier(), instanceContext.getClazz(), instanceContext);
        }
        if (t3 != null) {
            return t3;
        }
        Object objResolveFromParentScopes = lookupParent ? resolveFromParentScopes(scope, instanceContext) : null;
        return objResolveFromParentScopes == null ? (T) resolveInExtensions(scope, instanceContext) : (T) objResolveFromParentScopes;
    }

    private final <T> T resolveFromRegistry(Scope scope, ResolutionContext ctx) {
        return (T) this._koin.getInstanceRegistry().resolveInstance$koin_core(ctx.getQualifier(), ctx.getClazz(), scope.getScopeQualifier(), ctx);
    }

    private final <T> T resolveFromInjectedParameters(ResolutionContext ctx) {
        if (ctx.getParameters() == null || ctx.getParameters().isEmpty()) {
            return null;
        }
        ctx.getLogger().debug("|- ? " + ctx.getDebugTag() + " look in injected parameters");
        return (T) ctx.getParameters().getOrNull(ctx.getClazz());
    }

    private final <T> T resolveFromStackedParameters(Scope scope, ResolutionContext ctx) {
        ThreadLocal<ArrayDeque<ParametersHolder>> threadLocal = scope.get_parameterStack$koin_core();
        ArrayDeque<ParametersHolder> arrayDeque = threadLocal != null ? threadLocal.get() : null;
        ArrayDeque<ParametersHolder> arrayDeque2 = arrayDeque;
        if (arrayDeque2 == null || arrayDeque2.isEmpty()) {
            return null;
        }
        ctx.getLogger().debug("|- ? " + ctx.getDebugTag() + " look in stack parameters");
        ParametersHolder parametersHolderFirstOrNull = arrayDeque.firstOrNull();
        if (parametersHolderFirstOrNull != null) {
            return (T) parametersHolderFirstOrNull.getOrNull(ctx.getClazz());
        }
        return null;
    }

    private final <T> T resolveFromScopeSource(Scope scope, ResolutionContext ctx) {
        T t;
        if (scope.getIsRoot() || scope.getSourceValue() == null || !ctx.getClazz().isInstance(scope.getSourceValue()) || ctx.getQualifier() != null) {
            return null;
        }
        ctx.getLogger().debug("|- ? " + ctx.getDebugTag() + " look at scope source");
        if (!ctx.getClazz().isInstance(scope.getSourceValue()) || (t = (T) scope.getSourceValue()) == null) {
            return null;
        }
        return t;
    }

    @KoinExperimentalAPI
    private final <T> T resolveFromScopeArchetype(Scope scope, ResolutionContext ctx) {
        if (scope.getIsRoot() || scope.getScopeArchetype() == null) {
            return null;
        }
        ctx.getLogger().debug("|- ? " + ctx.getDebugTag() + " look at scope archetype");
        return (T) this._koin.getInstanceRegistry().resolveScopeArchetypeInstance$koin_core(ctx.getQualifier(), ctx.getClazz(), ctx);
    }

    private final <T> T resolveFromParentScopes(Scope scope, ResolutionContext ctx) {
        if (scope.getIsRoot()) {
            return null;
        }
        ctx.getLogger().debug("|- ? " + ctx.getDebugTag() + " look in other scopes");
        return (T) findInOtherScope(scope, ctx);
    }

    private final <T> T findInOtherScope(Scope scope, ResolutionContext ctx) {
        boolean z = scope.getLinkedScopes$koin_core().size() == 1;
        for (Scope scope2 : (z || scope.getLinkedScopes$koin_core().size() <= 1) ? scope.getLinkedScopes$koin_core() : CoreResolverKt.flatten(scope.getLinkedScopes$koin_core())) {
            ctx.getLogger().debug("|- ? " + ctx.getDebugTag() + " look in scope '" + scope2.getId() + '\'');
            T t = (T) resolveFromContextOrNull(scope2, !scope2.getIsRoot() ? ctx.newContextForScope(scope2) : ctx, z);
            if (t != null) {
                return t;
            }
        }
        return null;
    }

    private final <T> T throwNoDefinitionFound(ResolutionContext ctx) throws NoDefinitionFoundException {
        String qualifierString;
        Qualifier it = ctx.getQualifier();
        if (it == null || (qualifierString = " and qualifier '" + it + '\'') == null) {
            qualifierString = "";
        }
        throw new NoDefinitionFoundException("No definition found for type '" + KClassExtKt.getFullName(ctx.getClazz()) + '\'' + qualifierString + ". Check your Modules configuration and add missing type and/or qualifier!");
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
