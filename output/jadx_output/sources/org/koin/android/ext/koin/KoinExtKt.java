package org.koin.android.ext.koin;

import android.app.Application;
import android.content.Context;
import android.content.res.AssetManager;
import java.io.InputStream;
import java.util.List;
import java.util.Properties;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.android.logger.AndroidLogger;
import org.koin.core.Koin;
import org.koin.core.KoinApplication;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.definition.KoinDefinition;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.logger.Level;
import org.koin.core.logger.Logger;
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.registry.PropertyRegistryExtKt;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
import org.koin.dsl.DefinitionBindingKt;
import org.koin.dsl.ModuleDSLKt;

/* JADX INFO: compiled from: KoinExt.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u001a\u0012\u0010\u0004\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u0014\u0010\u0006\u001a\u00020\u0001*\u00020\u00012\b\b\u0002\u0010\u0007\u001a\u00020\b¨\u0006\t"}, d2 = {"androidLogger", "Lorg/koin/core/KoinApplication;", "level", "Lorg/koin/core/logger/Level;", "androidContext", "Landroid/content/Context;", "androidFileProperties", "koinPropertyFile", "", "koin-android_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class KoinExtKt {
    public static /* synthetic */ KoinApplication androidLogger$default(KoinApplication koinApplication, Level level, int i, Object obj) {
        if ((i & 1) != 0) {
            level = Level.INFO;
        }
        return androidLogger(koinApplication, level);
    }

    public static final KoinApplication androidLogger(KoinApplication $this$androidLogger, Level level) {
        Intrinsics.checkNotNullParameter($this$androidLogger, "<this>");
        Intrinsics.checkNotNullParameter(level, "level");
        $this$androidLogger.getKoin().setupLogger(new AndroidLogger(level));
        return $this$androidLogger;
    }

    public static final KoinApplication androidContext(KoinApplication $this$androidContext, final Context androidContext) {
        Intrinsics.checkNotNullParameter($this$androidContext, "<this>");
        Intrinsics.checkNotNullParameter(androidContext, "androidContext");
        Logger this_$iv = $this$androidContext.getKoin().getLogger();
        Level lvl$iv = Level.INFO;
        if (this_$iv.getLevel().compareTo(lvl$iv) <= 0) {
            $this$androidContext.getKoin().getLogger().info("[init] declare Android Context");
        }
        Koin.loadModules$default($this$androidContext.getKoin(), CollectionsKt.listOf(ModuleDSLKt.module$default(false, new Function1() { // from class: org.koin.android.ext.koin.KoinExtKt$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KoinExtKt.androidContext$lambda$0(androidContext, (Module) obj);
            }
        }, 1, null)), false, false, 6, null);
        return $this$androidContext;
    }

    static final Unit androidContext$lambda$0(final Context $androidContext, Module module) {
        Intrinsics.checkNotNullParameter(module, "$this$module");
        if ($androidContext instanceof Application) {
            Function2 definition$iv = new Function2() { // from class: org.koin.android.ext.koin.KoinExtKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return KoinExtKt.androidContext$lambda$0$0($androidContext, (Scope) obj, (ParametersHolder) obj2);
                }
            };
            Qualifier qualifier$iv = null;
            Qualifier scopeQualifier$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
            Kind kind$iv$iv$iv = Kind.Singleton;
            List secondaryTypes$iv$iv$iv = CollectionsKt.emptyList();
            BeanDefinition def$iv$iv = new BeanDefinition(scopeQualifier$iv$iv, Reflection.getOrCreateKotlinClass(Application.class), qualifier$iv, definition$iv, kind$iv$iv$iv, secondaryTypes$iv$iv$iv, null, 64, null);
            SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(def$iv$iv);
            module.indexPrimaryType(singleInstanceFactory);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory);
            }
            DefinitionBindingKt.bind(new KoinDefinition(module, singleInstanceFactory), Reflection.getOrCreateKotlinClass(Context.class));
        } else {
            Function2 definition$iv2 = new Function2() { // from class: org.koin.android.ext.koin.KoinExtKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return KoinExtKt.androidContext$lambda$0$1($androidContext, (Scope) obj, (ParametersHolder) obj2);
                }
            };
            Qualifier qualifier$iv2 = null;
            Qualifier scopeQualifier$iv$iv2 = ScopeRegistry.INSTANCE.getRootScopeQualifier();
            Kind kind$iv$iv$iv2 = Kind.Singleton;
            List secondaryTypes$iv$iv$iv2 = CollectionsKt.emptyList();
            BeanDefinition def$iv$iv2 = new BeanDefinition(scopeQualifier$iv$iv2, Reflection.getOrCreateKotlinClass(Context.class), qualifier$iv2, definition$iv2, kind$iv$iv$iv2, secondaryTypes$iv$iv$iv2, null, 64, null);
            SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(def$iv$iv2);
            module.indexPrimaryType(singleInstanceFactory2);
            if (module.get_createdAtStart()) {
                module.prepareForCreationAtStart(singleInstanceFactory2);
            }
            new KoinDefinition(module, singleInstanceFactory2);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Application androidContext$lambda$0$0(Context $androidContext, Scope single, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return (Application) $androidContext;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Context androidContext$lambda$0$1(Context $androidContext, Scope single, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return $androidContext;
    }

    public static /* synthetic */ KoinApplication androidFileProperties$default(KoinApplication koinApplication, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "koin.properties";
        }
        return androidFileProperties(koinApplication, str);
    }

    public static final KoinApplication androidFileProperties(KoinApplication $this$androidFileProperties, String koinPropertyFile) {
        String[] list;
        Intrinsics.checkNotNullParameter($this$androidFileProperties, "<this>");
        Intrinsics.checkNotNullParameter(koinPropertyFile, "koinPropertyFile");
        Properties koinProperties = new Properties();
        Koin $this$iv = $this$androidFileProperties.getKoin();
        Scope this_$iv$iv = $this$iv.getScopeRegistry().getRootScope();
        Context androidContext = (Context) this_$iv$iv.get(Reflection.getOrCreateKotlinClass(Context.class), null, null);
        try {
            AssetManager assets = androidContext.getAssets();
            boolean hasFile = (assets == null || (list = assets.list("")) == null) ? false : ArraysKt.contains(list, koinPropertyFile);
            if (hasFile) {
                try {
                    InputStream inputStreamOpen = androidContext.getAssets().open(koinPropertyFile);
                    try {
                        InputStream it = inputStreamOpen;
                        koinProperties.load(it);
                        Unit unit = Unit.INSTANCE;
                        CloseableKt.closeFinally(inputStreamOpen, null);
                        PropertyRegistryExtKt.saveProperties($this$androidFileProperties.getKoin().getPropertyRegistry(), koinProperties);
                        Unit nb = Unit.INSTANCE;
                        Logger this_$iv = $this$androidFileProperties.getKoin().getLogger();
                        Level lvl$iv = Level.INFO;
                        if (this_$iv.getLevel().compareTo(lvl$iv) <= 0) {
                            $this$androidFileProperties.getKoin().getLogger().info("[Android-Properties] loaded " + nb + " properties from assets/" + koinPropertyFile);
                        }
                    } finally {
                    }
                } catch (Exception e) {
                    $this$androidFileProperties.getKoin().getLogger().error("[Android-Properties] error for binding properties : " + e);
                }
            } else {
                Logger this_$iv2 = $this$androidFileProperties.getKoin().getLogger();
                Level lvl$iv2 = Level.INFO;
                if (this_$iv2.getLevel().compareTo(lvl$iv2) <= 0) {
                    $this$androidFileProperties.getKoin().getLogger().info("[Android-Properties] no assets/" + koinPropertyFile + " file to load");
                }
            }
        } catch (Exception e2) {
            $this$androidFileProperties.getKoin().getLogger().error("[Android-Properties] error while loading properties from assets/" + koinPropertyFile + " : " + e2);
        }
        return $this$androidFileProperties;
    }
}
