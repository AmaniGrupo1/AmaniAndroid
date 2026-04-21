package org.koin.androidx.fragment.koin;

import androidx.fragment.app.FragmentFactory;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.androidx.fragment.android.KoinFragmentFactory;
import org.koin.core.Koin;
import org.koin.core.KoinApplication;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.definition.KoinDefinition;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
import org.koin.dsl.ModuleDSLKt;

/* JADX INFO: compiled from: KoinApplicationExt.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0002\u001a\u00020\u0003*\u00020\u0004\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"fragmentFactoryModule", "Lorg/koin/core/module/Module;", "fragmentFactory", "", "Lorg/koin/core/KoinApplication;", "koin-android_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class KoinApplicationExtKt {
    private static final Module fragmentFactoryModule = ModuleDSLKt.module$default(false, new Function1() { // from class: org.koin.androidx.fragment.koin.KoinApplicationExtKt$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return KoinApplicationExtKt.fragmentFactoryModule$lambda$0((Module) obj);
        }
    }, 1, null);

    static final Unit fragmentFactoryModule$lambda$0(Module module) {
        Intrinsics.checkNotNullParameter(module, "$this$module");
        Function2 definition$iv = new Function2() { // from class: org.koin.androidx.fragment.koin.KoinApplicationExtKt$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return KoinApplicationExtKt.fragmentFactoryModule$lambda$0$0((Scope) obj, (ParametersHolder) obj2);
            }
        };
        Qualifier scopeQualifier$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv = Kind.Singleton;
        List secondaryTypes$iv$iv$iv = CollectionsKt.emptyList();
        BeanDefinition def$iv$iv = new BeanDefinition(scopeQualifier$iv$iv, Reflection.getOrCreateKotlinClass(FragmentFactory.class), null, definition$iv, kind$iv$iv$iv, secondaryTypes$iv$iv$iv, null, 64, null);
        SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(def$iv$iv);
        module.indexPrimaryType(singleInstanceFactory);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory);
        }
        new KoinDefinition(module, singleInstanceFactory);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FragmentFactory fragmentFactoryModule$lambda$0$0(Scope single, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return new KoinFragmentFactory(null, 1, null);
    }

    public static final void fragmentFactory(KoinApplication $this$fragmentFactory) {
        Intrinsics.checkNotNullParameter($this$fragmentFactory, "<this>");
        Koin.loadModules$default($this$fragmentFactory.getKoin(), CollectionsKt.listOf(fragmentFactoryModule), false, false, 6, null);
    }
}
