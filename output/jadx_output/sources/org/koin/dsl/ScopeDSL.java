package org.koin.dsl;

import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.definition.KoinDefinition;
import org.koin.core.instance.FactoryInstanceFactory;
import org.koin.core.instance.ScopedInstanceFactory;
import org.koin.core.module.KoinDslMarker;
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;

/* JADX INFO: compiled from: ScopeDSL.kt */
/* JADX INFO: loaded from: classes23.dex */
@KoinDslMarker
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007JQ\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u000e0\r\"\u0006\b\u0000\u0010\u000e\u0018\u00012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032)\b\b\u0010\u0010\u001a#\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u0002H\u000e0\u0011j\b\u0012\u0004\u0012\u0002H\u000e`\u0015¢\u0006\u0002\b\u0014H\u0086\bø\u0001\u0000JQ\u0010\u0016\u001a\b\u0012\u0004\u0012\u0002H\u000e0\r\"\u0006\b\u0000\u0010\u000e\u0018\u00012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032)\b\b\u0010\u0010\u001a#\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u0002H\u000e0\u0011j\b\u0012\u0004\u0012\u0002H\u000e`\u0015¢\u0006\u0002\b\u0014H\u0086\bø\u0001\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0017"}, d2 = {"Lorg/koin/dsl/ScopeDSL;", "", "scopeQualifier", "Lorg/koin/core/qualifier/Qualifier;", "module", "Lorg/koin/core/module/Module;", "<init>", "(Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/module/Module;)V", "getScopeQualifier", "()Lorg/koin/core/qualifier/Qualifier;", "getModule", "()Lorg/koin/core/module/Module;", "scoped", "Lorg/koin/core/definition/KoinDefinition;", ExifInterface.GPS_DIRECTION_TRUE, "qualifier", "definition", "Lkotlin/Function2;", "Lorg/koin/core/scope/Scope;", "Lorg/koin/core/parameter/ParametersHolder;", "Lkotlin/ExtensionFunctionType;", "Lorg/koin/core/definition/Definition;", "factory", "koin-core"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ScopeDSL {
    private final Module module;
    private final Qualifier scopeQualifier;

    public ScopeDSL(Qualifier scopeQualifier, Module module) {
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Intrinsics.checkNotNullParameter(module, "module");
        this.scopeQualifier = scopeQualifier;
        this.module = module;
    }

    public final Module getModule() {
        return this.module;
    }

    public final Qualifier getScopeQualifier() {
        return this.scopeQualifier;
    }

    public static /* synthetic */ KoinDefinition scoped$default(ScopeDSL $this, Qualifier qualifier, Function2 definition, int i, Object obj) {
        Qualifier qualifier2;
        if ((i & 1) == 0) {
            qualifier2 = qualifier;
        } else {
            qualifier2 = null;
        }
        Intrinsics.checkNotNullParameter(definition, "definition");
        Qualifier scopeQualifier$iv = $this.getScopeQualifier();
        Qualifier qualifier$iv = qualifier2;
        Kind kind$iv$iv = Kind.Scoped;
        List secondaryTypes$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        BeanDefinition def$iv = new BeanDefinition(scopeQualifier$iv, Reflection.getOrCreateKotlinClass(Object.class), qualifier$iv, definition, kind$iv$iv, secondaryTypes$iv$iv, null, 64, null);
        ScopedInstanceFactory def = new ScopedInstanceFactory(def$iv, false, 2, null);
        $this.getModule().indexPrimaryType(def);
        return new KoinDefinition($this.getModule(), def);
    }

    public final /* synthetic */ <T> KoinDefinition<T> scoped(Qualifier qualifier, Function2<? super Scope, ? super ParametersHolder, ? extends T> definition) {
        Intrinsics.checkNotNullParameter(definition, "definition");
        Qualifier scopeQualifier$iv = getScopeQualifier();
        Kind kind$iv$iv = Kind.Scoped;
        List secondaryTypes$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        BeanDefinition def$iv = new BeanDefinition(scopeQualifier$iv, Reflection.getOrCreateKotlinClass(Object.class), qualifier, definition, kind$iv$iv, secondaryTypes$iv$iv, null, 64, null);
        ScopedInstanceFactory def = new ScopedInstanceFactory(def$iv, false, 2, null);
        getModule().indexPrimaryType(def);
        return new KoinDefinition<>(getModule(), def);
    }

    public static /* synthetic */ KoinDefinition factory$default(ScopeDSL $this, Qualifier qualifier, Function2 definition, int i, Object obj) {
        Qualifier qualifier2;
        if ((i & 1) == 0) {
            qualifier2 = qualifier;
        } else {
            qualifier2 = null;
        }
        Intrinsics.checkNotNullParameter(definition, "definition");
        Module this_$iv = $this.getModule();
        Qualifier scopeQualifier$iv = $this.getScopeQualifier();
        Qualifier qualifier$iv = qualifier2;
        Kind kind$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        BeanDefinition def$iv$iv = new BeanDefinition(scopeQualifier$iv, Reflection.getOrCreateKotlinClass(Object.class), qualifier$iv, definition, kind$iv$iv$iv, secondaryTypes$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv = new FactoryInstanceFactory(def$iv$iv);
        this_$iv.indexPrimaryType(factory$iv);
        return new KoinDefinition(this_$iv, factory$iv);
    }

    public final /* synthetic */ <T> KoinDefinition<T> factory(Qualifier qualifier, Function2<? super Scope, ? super ParametersHolder, ? extends T> definition) {
        Intrinsics.checkNotNullParameter(definition, "definition");
        Module this_$iv = getModule();
        Qualifier scopeQualifier$iv = getScopeQualifier();
        Kind kind$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        BeanDefinition def$iv$iv = new BeanDefinition(scopeQualifier$iv, Reflection.getOrCreateKotlinClass(Object.class), qualifier, definition, kind$iv$iv$iv, secondaryTypes$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv = new FactoryInstanceFactory(def$iv$iv);
        this_$iv.indexPrimaryType(factory$iv);
        return new KoinDefinition<>(this_$iv, factory$iv);
    }
}
