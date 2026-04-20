package org.koin.core;

import androidx.exifinterface.media.ExifInterface;
import com.google.firebase.firestore.model.Values;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.time.TimeSource;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.koin.core.annotation.KoinExperimentalAPI;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.component.KoinScopeComponentKt;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.error.ScopeNotCreatedException;
import org.koin.core.extension.ExtensionManager;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.logger.EmptyLogger;
import org.koin.core.logger.Logger;
import org.koin.core.module.Module;
import org.koin.core.module.ModuleKt;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.qualifier.TypeQualifier;
import org.koin.core.registry.InstanceRegistry;
import org.koin.core.registry.OptionRegistry;
import org.koin.core.registry.PropertyRegistry;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.resolution.CoreResolverV2;
import org.koin.core.resolution.InstanceResolver;
import org.koin.core.resolution.ResolutionExtension;
import org.koin.core.scope.Scope;
import org.koin.core.time.DurationExtKt;
import org.koin.ext.KClassExtKt;
import org.koin.mp.KoinPlatformTools;
import org.koin.mp.KoinPlatformTools_jvmKt;

/* JADX INFO: compiled from: Koin.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000°\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0007J\u0010\u0010,\u001a\u00020\u00102\u0006\u0010\u0006\u001a\u00020\u0005H\u0007JL\u0010-\u001a\b\u0012\u0004\u0012\u0002H/0.\"\n\b\u0000\u0010/\u0018\u0001*\u00020\u00012\n\b\u0002\u00100\u001a\u0004\u0018\u0001012\b\b\u0002\u00102\u001a\u0002032\u0016\b\n\u00104\u001a\u0010\u0012\u0004\u0012\u000206\u0018\u000105j\u0004\u0018\u0001`7H\u0086\bø\u0001\u0000JN\u00108\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H/0.\"\n\b\u0000\u0010/\u0018\u0001*\u00020\u00012\n\b\u0002\u00100\u001a\u0004\u0018\u0001012\b\b\u0002\u00102\u001a\u0002032\u0016\b\n\u00104\u001a\u0010\u0012\u0004\u0012\u000206\u0018\u000105j\u0004\u0018\u0001`7H\u0086\bø\u0001\u0000JA\u00109\u001a\u0002H/\"\n\b\u0000\u0010/\u0018\u0001*\u00020\u00012\n\b\u0002\u00100\u001a\u0004\u0018\u0001012\u0016\b\n\u00104\u001a\u0010\u0012\u0004\u0012\u000206\u0018\u000105j\u0004\u0018\u0001`7H\u0086\bø\u0001\u0000¢\u0006\u0002\u0010:JC\u0010;\u001a\u0004\u0018\u0001H/\"\n\b\u0000\u0010/\u0018\u0001*\u00020\u00012\n\b\u0002\u00100\u001a\u0004\u0018\u0001012\u0016\b\n\u00104\u001a\u0010\u0012\u0004\u0012\u000206\u0018\u000105j\u0004\u0018\u0001`7H\u0086\bø\u0001\u0000¢\u0006\u0002\u0010:JA\u00109\u001a\u0002H/\"\u0004\b\u0000\u0010/2\n\u0010<\u001a\u0006\u0012\u0002\b\u00030=2\n\b\u0002\u00100\u001a\u0004\u0018\u0001012\u0016\b\u0002\u00104\u001a\u0010\u0012\u0004\u0012\u000206\u0018\u000105j\u0004\u0018\u0001`7¢\u0006\u0002\u0010>JC\u0010;\u001a\u0004\u0018\u0001H/\"\u0004\b\u0000\u0010/2\n\u0010<\u001a\u0006\u0012\u0002\b\u00030=2\n\b\u0002\u00100\u001a\u0004\u0018\u0001012\u0016\b\u0002\u00104\u001a\u0010\u0012\u0004\u0012\u000206\u0018\u000105j\u0004\u0018\u0001`7¢\u0006\u0002\u0010>JH\u0010?\u001a\u00020\u0010\"\u0006\b\u0000\u0010/\u0018\u00012\u0006\u0010@\u001a\u0002H/2\n\b\u0002\u00100\u001a\u0004\u0018\u0001012\u0012\b\u0002\u0010A\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030=0B2\b\b\u0002\u0010C\u001a\u00020DH\u0086\b¢\u0006\u0002\u0010EJ\u0017\u0010F\u001a\b\u0012\u0004\u0012\u0002H/0B\"\u0006\b\u0000\u0010/\u0018\u0001H\u0086\bJ2\u0010G\u001a\u00020H2\n\u0010I\u001a\u00060Jj\u0002`K2\u0006\u00100\u001a\u0002012\n\b\u0002\u0010L\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010M\u001a\u0004\u0018\u00010NJ9\u0010G\u001a\u00020H\"\n\b\u0000\u0010/\u0018\u0001*\u00020\u00012\n\u0010I\u001a\u00060Jj\u0002`K2\n\b\u0002\u0010L\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010M\u001a\u0004\u0018\u00010NH\u0086\bJ#\u0010G\u001a\u00020H\"\n\b\u0000\u0010/\u0018\u0001*\u00020\u00012\f\b\u0002\u0010I\u001a\u00060Jj\u0002`KH\u0086\bJ\u001d\u0010G\u001a\u00020H\"\b\b\u0000\u0010/*\u00020O2\u0006\u0010P\u001a\u0002H/¢\u0006\u0002\u0010QJ&\u0010R\u001a\u00020H2\n\u0010I\u001a\u00060Jj\u0002`K2\u0006\u00100\u001a\u0002012\n\b\u0002\u0010L\u001a\u0004\u0018\u00010\u0001J!\u0010R\u001a\u00020H\"\n\b\u0000\u0010/\u0018\u0001*\u00020\u00012\n\u0010I\u001a\u00060Jj\u0002`KH\u0086\bJ\u0012\u0010S\u001a\u00020H2\n\u0010I\u001a\u00060Jj\u0002`KJ\u0014\u0010T\u001a\u0004\u0018\u00010H2\n\u0010I\u001a\u00060Jj\u0002`KJ\u0012\u0010U\u001a\u00020\u00102\n\u0010I\u001a\u00060Jj\u0002`KJ%\u0010V\u001a\u0002H/\"\b\b\u0000\u0010/*\u00020\u00012\u0006\u0010W\u001a\u00020J2\u0006\u0010X\u001a\u0002H/¢\u0006\u0002\u0010YJ\u001f\u0010V\u001a\u0004\u0018\u0001H/\"\b\b\u0000\u0010/*\u00020\u00012\u0006\u0010W\u001a\u00020J¢\u0006\u0002\u0010ZJ\u0016\u0010[\u001a\u00020\u00102\u0006\u0010W\u001a\u00020J2\u0006\u0010\u0004\u001a\u00020\u0001J\u000e\u0010\\\u001a\u00020\u00102\u0006\u0010W\u001a\u00020JJ\u0006\u0010]\u001a\u00020\u0010J(\u0010^\u001a\u00020\u00102\f\u0010_\u001a\b\u0012\u0004\u0012\u00020`0B2\b\b\u0002\u0010C\u001a\u00020D2\b\b\u0002\u0010a\u001a\u00020DJ\u0014\u0010b\u001a\u00020\u00102\f\u0010_\u001a\b\u0012\u0004\u0012\u00020`0BJ\u0006\u0010a\u001a\u00020\u0010R&\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058\u0006@BX\u0087\u000e¢\u0006\u000e\n\u0000\u0012\u0004\b\u0007\u0010\u0003\u001a\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u00020\u000b8\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\f\u0010\u0003\u001a\u0004\b\r\u0010\u000eR\u001c\u0010\u0013\u001a\u00020\u00148\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0015\u0010\u0003\u001a\u0004\b\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u00020\u00198\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001a\u0010\u0003\u001a\u0004\b\u001b\u0010\u001cR\u001c\u0010\u001d\u001a\u00020\u001e8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001f\u0010\u0003\u001a\u0004\b \u0010!R\u001c\u0010\"\u001a\u00020#8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b$\u0010\u0003\u001a\u0004\b%\u0010&R\u001c\u0010'\u001a\u00020(8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b)\u0010\u0003\u001a\u0004\b*\u0010+\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006c"}, d2 = {"Lorg/koin/core/Koin;", "", "<init>", "()V", Values.VECTOR_MAP_VECTORS_KEY, "Lorg/koin/core/logger/Logger;", "logger", "getLogger$annotations", "getLogger", "()Lorg/koin/core/logger/Logger;", "resolver", "Lorg/koin/core/resolution/InstanceResolver;", "getResolver$koin_core$annotations", "getResolver$koin_core", "()Lorg/koin/core/resolution/InstanceResolver;", "addResolutionExtension", "", "extension", "Lorg/koin/core/resolution/ResolutionExtension;", "scopeRegistry", "Lorg/koin/core/registry/ScopeRegistry;", "getScopeRegistry$annotations", "getScopeRegistry", "()Lorg/koin/core/registry/ScopeRegistry;", "instanceRegistry", "Lorg/koin/core/registry/InstanceRegistry;", "getInstanceRegistry$annotations", "getInstanceRegistry", "()Lorg/koin/core/registry/InstanceRegistry;", "propertyRegistry", "Lorg/koin/core/registry/PropertyRegistry;", "getPropertyRegistry$annotations", "getPropertyRegistry", "()Lorg/koin/core/registry/PropertyRegistry;", "extensionManager", "Lorg/koin/core/extension/ExtensionManager;", "getExtensionManager$annotations", "getExtensionManager", "()Lorg/koin/core/extension/ExtensionManager;", "optionRegistry", "Lorg/koin/core/registry/OptionRegistry;", "getOptionRegistry$annotations", "getOptionRegistry", "()Lorg/koin/core/registry/OptionRegistry;", "setupLogger", "inject", "Lkotlin/Lazy;", ExifInterface.GPS_DIRECTION_TRUE, "qualifier", "Lorg/koin/core/qualifier/Qualifier;", "mode", "Lkotlin/LazyThreadSafetyMode;", "parameters", "Lkotlin/Function0;", "Lorg/koin/core/parameter/ParametersHolder;", "Lorg/koin/core/parameter/ParametersDefinition;", "injectOrNull", "get", "(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "getOrNull", "clazz", "Lkotlin/reflect/KClass;", "(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "declare", "instance", "secondaryTypes", "", "allowOverride", "", "(Ljava/lang/Object;Lorg/koin/core/qualifier/Qualifier;Ljava/util/List;Z)V", "getAll", "createScope", "Lorg/koin/core/scope/Scope;", "scopeId", "", "Lorg/koin/core/scope/ScopeID;", "source", "scopeArchetype", "Lorg/koin/core/qualifier/TypeQualifier;", "Lorg/koin/core/component/KoinScopeComponent;", "t", "(Lorg/koin/core/component/KoinScopeComponent;)Lorg/koin/core/scope/Scope;", "getOrCreateScope", "getScope", "getScopeOrNull", "deleteScope", "getProperty", "key", "defaultValue", "(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;", "(Ljava/lang/String;)Ljava/lang/Object;", "setProperty", "deleteProperty", "close", "loadModules", "modules", "Lorg/koin/core/module/Module;", "createEagerInstances", "unloadModules", "koin-core"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class Koin {
    private Logger logger = new EmptyLogger();
    private final InstanceResolver resolver = new CoreResolverV2(this);
    private final ScopeRegistry scopeRegistry = new ScopeRegistry(this);
    private final InstanceRegistry instanceRegistry = new InstanceRegistry(this);
    private final PropertyRegistry propertyRegistry = new PropertyRegistry(this);
    private final ExtensionManager extensionManager = new ExtensionManager(this);
    private final OptionRegistry optionRegistry = new OptionRegistry();

    public static /* synthetic */ void getExtensionManager$annotations() {
    }

    public static /* synthetic */ void getInstanceRegistry$annotations() {
    }

    public static /* synthetic */ void getLogger$annotations() {
    }

    public static /* synthetic */ void getOptionRegistry$annotations() {
    }

    public static /* synthetic */ void getPropertyRegistry$annotations() {
    }

    public static /* synthetic */ void getResolver$koin_core$annotations() {
    }

    public static /* synthetic */ void getScopeRegistry$annotations() {
    }

    public final Logger getLogger() {
        return this.logger;
    }

    /* JADX INFO: renamed from: getResolver$koin_core, reason: from getter */
    public final InstanceResolver getResolver() {
        return this.resolver;
    }

    @KoinExperimentalAPI
    public final void addResolutionExtension(ResolutionExtension extension) {
        Intrinsics.checkNotNullParameter(extension, "extension");
        this.resolver.addResolutionExtension(extension);
    }

    public final ScopeRegistry getScopeRegistry() {
        return this.scopeRegistry;
    }

    public final InstanceRegistry getInstanceRegistry() {
        return this.instanceRegistry;
    }

    public final PropertyRegistry getPropertyRegistry() {
        return this.propertyRegistry;
    }

    public final ExtensionManager getExtensionManager() {
        return this.extensionManager;
    }

    public final OptionRegistry getOptionRegistry() {
        return this.optionRegistry;
    }

    public final void setupLogger(Logger logger) {
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.logger = logger;
    }

    public static /* synthetic */ Lazy inject$default(Koin $this, Qualifier qualifier, LazyThreadSafetyMode mode, Function0 parameters, int i, Object obj) {
        if ((i & 1) != 0) {
            qualifier = null;
        }
        if ((i & 2) != 0) {
            mode = KoinPlatformTools.INSTANCE.defaultLazyMode();
        }
        if ((i & 4) != 0) {
            parameters = null;
        }
        Intrinsics.checkNotNullParameter(mode, "mode");
        Scope this_$iv = $this.getScopeRegistry().getRootScope();
        Function0 parameters$iv = parameters;
        Qualifier qualifier$iv = qualifier;
        LazyThreadSafetyMode mode$iv = mode;
        Intrinsics.needClassReification();
        return LazyKt.lazy(mode$iv, (Function0) new Koin$inject$$inlined$inject$1(this_$iv, qualifier$iv, parameters$iv));
    }

    public final /* synthetic */ <T> Lazy<T> inject(Qualifier qualifier, LazyThreadSafetyMode mode, Function0<? extends ParametersHolder> parameters) {
        Intrinsics.checkNotNullParameter(mode, "mode");
        Scope this_$iv = getScopeRegistry().getRootScope();
        Intrinsics.needClassReification();
        return LazyKt.lazy(mode, (Function0) new Koin$inject$$inlined$inject$1(this_$iv, qualifier, parameters));
    }

    public static /* synthetic */ Lazy injectOrNull$default(Koin $this, Qualifier qualifier, LazyThreadSafetyMode mode, Function0 parameters, int i, Object obj) {
        if ((i & 1) != 0) {
            qualifier = null;
        }
        if ((i & 2) != 0) {
            mode = KoinPlatformTools.INSTANCE.defaultLazyMode();
        }
        if ((i & 4) != 0) {
            parameters = null;
        }
        Intrinsics.checkNotNullParameter(mode, "mode");
        Scope this_$iv = $this.getScopeRegistry().getRootScope();
        Function0 parameters$iv = parameters;
        Qualifier qualifier$iv = qualifier;
        LazyThreadSafetyMode mode$iv = mode;
        Intrinsics.needClassReification();
        return LazyKt.lazy(mode$iv, (Function0) new Koin$injectOrNull$$inlined$injectOrNull$1(this_$iv, qualifier$iv, parameters$iv));
    }

    public final /* synthetic */ <T> Lazy<T> injectOrNull(Qualifier qualifier, LazyThreadSafetyMode mode, Function0<? extends ParametersHolder> parameters) {
        Intrinsics.checkNotNullParameter(mode, "mode");
        Scope this_$iv = getScopeRegistry().getRootScope();
        Intrinsics.needClassReification();
        return LazyKt.lazy(mode, (Function0) new Koin$injectOrNull$$inlined$injectOrNull$1(this_$iv, qualifier, parameters));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object get$default(Koin $this, Qualifier qualifier, Function0 parameters, int i, Object obj) {
        if ((i & 1) != 0) {
            qualifier = null;
        }
        if ((i & 2) != 0) {
            parameters = null;
        }
        Scope rootScope = $this.getScopeRegistry().getRootScope();
        Function0 parameters$iv = parameters;
        Qualifier qualifier$iv = qualifier;
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return rootScope.get(Reflection.getOrCreateKotlinClass(Object.class), qualifier$iv, parameters$iv);
    }

    public final /* synthetic */ <T> T get(Qualifier qualifier, Function0<? extends ParametersHolder> parameters) {
        Scope rootScope = getScopeRegistry().getRootScope();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) rootScope.get(Reflection.getOrCreateKotlinClass(Object.class), qualifier, parameters);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object getOrNull$default(Koin $this, Qualifier qualifier, Function0 parameters, int i, Object obj) {
        if ((i & 1) != 0) {
            qualifier = null;
        }
        if ((i & 2) != 0) {
            parameters = null;
        }
        Scope rootScope = $this.getScopeRegistry().getRootScope();
        Function0 parameters$iv = parameters;
        Qualifier qualifier$iv = qualifier;
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return rootScope.getOrNull(Reflection.getOrCreateKotlinClass(Object.class), qualifier$iv, parameters$iv);
    }

    public final /* synthetic */ <T> T getOrNull(Qualifier qualifier, Function0<? extends ParametersHolder> parameters) {
        Scope rootScope = getScopeRegistry().getRootScope();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) rootScope.getOrNull(Reflection.getOrCreateKotlinClass(Object.class), qualifier, parameters);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object get$default(Koin koin, KClass kClass, Qualifier qualifier, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            qualifier = null;
        }
        if ((i & 4) != 0) {
            function0 = null;
        }
        return koin.get(kClass, qualifier, function0);
    }

    public final <T> T get(KClass<?> clazz, Qualifier qualifier, Function0<? extends ParametersHolder> parameters) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return (T) this.scopeRegistry.getRootScope().get(clazz, qualifier, parameters);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object getOrNull$default(Koin koin, KClass kClass, Qualifier qualifier, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            qualifier = null;
        }
        if ((i & 4) != 0) {
            function0 = null;
        }
        return koin.getOrNull(kClass, qualifier, function0);
    }

    public final <T> T getOrNull(KClass<?> clazz, Qualifier qualifier, Function0<? extends ParametersHolder> parameters) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return (T) this.scopeRegistry.getRootScope().getOrNull(clazz, qualifier, parameters);
    }

    public static /* synthetic */ void declare$default(Koin $this, Object instance, Qualifier qualifier, List secondaryTypes, boolean allowOverride, int i, Object obj) {
        String value;
        String value2;
        Qualifier qualifier2 = (i & 2) != 0 ? null : qualifier;
        List secondaryTypes2 = (i & 4) != 0 ? CollectionsKt.emptyList() : secondaryTypes;
        boolean allowOverride2 = (i & 8) != 0 ? true : allowOverride;
        Intrinsics.checkNotNullParameter(secondaryTypes2, "secondaryTypes");
        InstanceRegistry this_$iv = $this.getInstanceRegistry();
        boolean allowOverride$iv = allowOverride2;
        Qualifier qualifier$iv = qualifier2;
        List secondaryTypes$iv = secondaryTypes2;
        Qualifier rootQualifier$iv = this_$iv.get_koin().getScopeRegistry().getRootScope().getScopeQualifier();
        Kind kind$iv$iv = Kind.Scoped;
        Intrinsics.needClassReification();
        Function2 definition$iv$iv = new Koin$declare$$inlined$declareRootInstance$1(instance);
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        BeanDefinition def$iv = new BeanDefinition(rootQualifier$iv, Reflection.getOrCreateKotlinClass(Object.class), qualifier$iv, definition$iv$iv, kind$iv$iv, secondaryTypes$iv, null, 64, null);
        SingleInstanceFactory factory$iv = new SingleInstanceFactory(def$iv);
        KClass<?> primaryType = def$iv.getPrimaryType();
        Qualifier typeQualifier$iv$iv = def$iv.getQualifier();
        Qualifier scopeQualifier$iv$iv = def$iv.getScopeQualifier();
        StringBuilder sb = new StringBuilder();
        StringBuilder $this$indexKey_u24lambda_u240$iv$iv = sb;
        $this$indexKey_u24lambda_u240$iv$iv.append(KClassExtKt.getFullName(primaryType));
        $this$indexKey_u24lambda_u240$iv$iv.append(AbstractJsonLexerKt.COLON);
        $this$indexKey_u24lambda_u240$iv$iv.append((typeQualifier$iv$iv == null || (value2 = typeQualifier$iv$iv.getValue()) == null) ? "" : value2);
        $this$indexKey_u24lambda_u240$iv$iv.append(AbstractJsonLexerKt.COLON);
        $this$indexKey_u24lambda_u240$iv$iv.append(scopeQualifier$iv$iv);
        String indexKey$iv = sb.toString();
        BeanDefinition def$iv2 = def$iv;
        InstanceRegistry.saveMapping$default(this_$iv, allowOverride$iv, indexKey$iv, factory$iv, false, 8, null);
        String indexKey$iv2 = indexKey$iv;
        Iterable $this$forEach$iv$iv = def$iv2.getSecondaryTypes();
        for (Object element$iv$iv : $this$forEach$iv$iv) {
            KClass clazz$iv = (KClass) element$iv$iv;
            Qualifier typeQualifier$iv$iv2 = def$iv2.getQualifier();
            Qualifier scopeQualifier$iv$iv2 = def$iv2.getScopeQualifier();
            StringBuilder sb2 = new StringBuilder();
            BeanDefinition def$iv3 = def$iv2;
            StringBuilder $this$indexKey_u24lambda_u240$iv$iv2 = sb2;
            String indexKey$iv3 = indexKey$iv2;
            $this$indexKey_u24lambda_u240$iv$iv2.append(KClassExtKt.getFullName(clazz$iv));
            $this$indexKey_u24lambda_u240$iv$iv2.append(AbstractJsonLexerKt.COLON);
            if (typeQualifier$iv$iv2 == null || (value = typeQualifier$iv$iv2.getValue()) == null) {
                value = "";
            }
            $this$indexKey_u24lambda_u240$iv$iv2.append(value);
            $this$indexKey_u24lambda_u240$iv$iv2.append(AbstractJsonLexerKt.COLON);
            $this$indexKey_u24lambda_u240$iv$iv2.append(scopeQualifier$iv$iv2);
            String index$iv = sb2.toString();
            InstanceRegistry.saveMapping$default(this_$iv, allowOverride$iv, index$iv, factory$iv, false, 8, null);
            def$iv2 = def$iv3;
            indexKey$iv2 = indexKey$iv3;
        }
    }

    public final /* synthetic */ <T> void declare(T instance, Qualifier qualifier, List<? extends KClass<?>> secondaryTypes, boolean allowOverride) {
        String value;
        String value2;
        Intrinsics.checkNotNullParameter(secondaryTypes, "secondaryTypes");
        InstanceRegistry this_$iv = getInstanceRegistry();
        Qualifier rootQualifier$iv = this_$iv.get_koin().getScopeRegistry().getRootScope().getScopeQualifier();
        Kind kind$iv$iv = Kind.Scoped;
        Intrinsics.needClassReification();
        Function2 definition$iv$iv = new Koin$declare$$inlined$declareRootInstance$1(instance);
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        BeanDefinition def$iv = new BeanDefinition(rootQualifier$iv, Reflection.getOrCreateKotlinClass(Object.class), qualifier, definition$iv$iv, kind$iv$iv, secondaryTypes, null, 64, null);
        SingleInstanceFactory factory$iv = new SingleInstanceFactory(def$iv);
        KClass<?> primaryType = def$iv.getPrimaryType();
        Qualifier typeQualifier$iv$iv = def$iv.getQualifier();
        Qualifier scopeQualifier$iv$iv = def$iv.getScopeQualifier();
        StringBuilder sb = new StringBuilder();
        StringBuilder $this$indexKey_u24lambda_u240$iv$iv = sb;
        $this$indexKey_u24lambda_u240$iv$iv.append(KClassExtKt.getFullName(primaryType));
        $this$indexKey_u24lambda_u240$iv$iv.append(AbstractJsonLexerKt.COLON);
        $this$indexKey_u24lambda_u240$iv$iv.append((typeQualifier$iv$iv == null || (value2 = typeQualifier$iv$iv.getValue()) == null) ? "" : value2);
        $this$indexKey_u24lambda_u240$iv$iv.append(AbstractJsonLexerKt.COLON);
        $this$indexKey_u24lambda_u240$iv$iv.append(scopeQualifier$iv$iv);
        String indexKey$iv = sb.toString();
        InstanceRegistry.saveMapping$default(this_$iv, allowOverride, indexKey$iv, factory$iv, false, 8, null);
        Iterable $this$forEach$iv$iv = def$iv.getSecondaryTypes();
        for (Object element$iv$iv : $this$forEach$iv$iv) {
            KClass clazz$iv = (KClass) element$iv$iv;
            Qualifier typeQualifier$iv$iv2 = def$iv.getQualifier();
            Qualifier scopeQualifier$iv$iv2 = def$iv.getScopeQualifier();
            StringBuilder sb2 = new StringBuilder();
            String indexKey$iv2 = indexKey$iv;
            StringBuilder $this$indexKey_u24lambda_u240$iv$iv2 = sb2;
            Iterable $this$forEach$iv$iv2 = $this$forEach$iv$iv;
            $this$indexKey_u24lambda_u240$iv$iv2.append(KClassExtKt.getFullName(clazz$iv));
            $this$indexKey_u24lambda_u240$iv$iv2.append(AbstractJsonLexerKt.COLON);
            if (typeQualifier$iv$iv2 == null || (value = typeQualifier$iv$iv2.getValue()) == null) {
                value = "";
            }
            $this$indexKey_u24lambda_u240$iv$iv2.append(value);
            $this$indexKey_u24lambda_u240$iv$iv2.append(AbstractJsonLexerKt.COLON);
            $this$indexKey_u24lambda_u240$iv$iv2.append(scopeQualifier$iv$iv2);
            String index$iv = sb2.toString();
            InstanceRegistry.saveMapping$default(this_$iv, allowOverride, index$iv, factory$iv, false, 8, null);
            indexKey$iv = indexKey$iv2;
            $this$forEach$iv$iv = $this$forEach$iv$iv2;
        }
    }

    public final /* synthetic */ <T> List<T> getAll() {
        Scope this_$iv = getScopeRegistry().getRootScope();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return this_$iv.getAll(Reflection.getOrCreateKotlinClass(Object.class));
    }

    public static /* synthetic */ Scope createScope$default(Koin koin, String str, Qualifier qualifier, Object obj, TypeQualifier typeQualifier, int i, Object obj2) {
        if ((i & 4) != 0) {
            obj = null;
        }
        if ((i & 8) != 0) {
            typeQualifier = null;
        }
        return koin.createScope(str, qualifier, obj, typeQualifier);
    }

    public final Scope createScope(String scopeId, Qualifier qualifier, Object source, TypeQualifier scopeArchetype) {
        Intrinsics.checkNotNullParameter(scopeId, "scopeId");
        Intrinsics.checkNotNullParameter(qualifier, "qualifier");
        return this.scopeRegistry.createScope(scopeId, qualifier, source, scopeArchetype);
    }

    public static /* synthetic */ Scope createScope$default(Koin $this, String scopeId, Object source, TypeQualifier scopeArchetype, int i, Object obj) {
        if ((i & 2) != 0) {
            source = null;
        }
        if ((i & 4) != 0) {
            scopeArchetype = null;
        }
        Intrinsics.checkNotNullParameter(scopeId, "scopeId");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        TypeQualifier qualifier = new TypeQualifier(Reflection.getOrCreateKotlinClass(Object.class));
        return $this.getScopeRegistry().createScope(scopeId, qualifier, source, scopeArchetype);
    }

    public final /* synthetic */ <T> Scope createScope(String scopeId, Object source, TypeQualifier scopeArchetype) {
        Intrinsics.checkNotNullParameter(scopeId, "scopeId");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        TypeQualifier qualifier = new TypeQualifier(Reflection.getOrCreateKotlinClass(Object.class));
        return getScopeRegistry().createScope(scopeId, qualifier, source, scopeArchetype);
    }

    public static /* synthetic */ Scope createScope$default(Koin $this, String scopeId, int i, Object obj) {
        if ((i & 1) != 0) {
            scopeId = KoinPlatformTools_jvmKt.generateId(KoinPlatformTools.INSTANCE);
        }
        String scopeId2 = scopeId;
        Intrinsics.checkNotNullParameter(scopeId2, "scopeId");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        TypeQualifier qualifier = new TypeQualifier(Reflection.getOrCreateKotlinClass(Object.class));
        return ScopeRegistry.createScope$default($this.getScopeRegistry(), scopeId2, qualifier, null, null, 8, null);
    }

    public final /* synthetic */ <T> Scope createScope(String scopeId) {
        Intrinsics.checkNotNullParameter(scopeId, "scopeId");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        TypeQualifier qualifier = new TypeQualifier(Reflection.getOrCreateKotlinClass(Object.class));
        return ScopeRegistry.createScope$default(getScopeRegistry(), scopeId, qualifier, null, null, 8, null);
    }

    public final <T extends KoinScopeComponent> Scope createScope(T t) {
        Intrinsics.checkNotNullParameter(t, "t");
        String scopeId = KoinScopeComponentKt.getScopeId(t);
        TypeQualifier qualifier = KoinScopeComponentKt.getScopeName(t);
        return ScopeRegistry.createScope$default(this.scopeRegistry, scopeId, qualifier, null, null, 8, null);
    }

    public static /* synthetic */ Scope getOrCreateScope$default(Koin koin, String str, Qualifier qualifier, Object obj, int i, Object obj2) {
        if ((i & 4) != 0) {
            obj = null;
        }
        return koin.getOrCreateScope(str, qualifier, obj);
    }

    public final Scope getOrCreateScope(String scopeId, Qualifier qualifier, Object source) {
        Intrinsics.checkNotNullParameter(scopeId, "scopeId");
        Intrinsics.checkNotNullParameter(qualifier, "qualifier");
        Scope scopeOrNull = this.scopeRegistry.getScopeOrNull(scopeId);
        return scopeOrNull == null ? createScope$default(this, scopeId, qualifier, source, null, 8, null) : scopeOrNull;
    }

    public final /* synthetic */ <T> Scope getOrCreateScope(String scopeId) {
        Intrinsics.checkNotNullParameter(scopeId, "scopeId");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        TypeQualifier qualifier = new TypeQualifier(Reflection.getOrCreateKotlinClass(Object.class));
        Scope scopeOrNull = getScopeRegistry().getScopeOrNull(scopeId);
        return scopeOrNull == null ? createScope$default(this, scopeId, qualifier, null, null, 12, null) : scopeOrNull;
    }

    public final Scope getScope(String scopeId) throws ScopeNotCreatedException {
        Intrinsics.checkNotNullParameter(scopeId, "scopeId");
        Scope scopeOrNull = this.scopeRegistry.getScopeOrNull(scopeId);
        if (scopeOrNull != null) {
            return scopeOrNull;
        }
        throw new ScopeNotCreatedException("No scope found for id '" + scopeId + '\'');
    }

    public final Scope getScopeOrNull(String scopeId) {
        Intrinsics.checkNotNullParameter(scopeId, "scopeId");
        return this.scopeRegistry.getScopeOrNull(scopeId);
    }

    public final void deleteScope(String scopeId) {
        Intrinsics.checkNotNullParameter(scopeId, "scopeId");
        this.scopeRegistry.deleteScope$koin_core(scopeId);
    }

    public final <T> T getProperty(String key, T defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        T t = (T) this.propertyRegistry.getProperty(key);
        return t == null ? defaultValue : t;
    }

    public final <T> T getProperty(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return (T) this.propertyRegistry.getProperty(key);
    }

    public final void setProperty(String key, Object value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        this.propertyRegistry.saveProperty$koin_core(key, value);
    }

    public final void deleteProperty(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.propertyRegistry.deleteProperty(key);
    }

    public final void close() {
        this.scopeRegistry.close$koin_core();
        this.instanceRegistry.close$koin_core();
        this.propertyRegistry.close();
        this.extensionManager.close();
    }

    public static /* synthetic */ void loadModules$default(Koin koin, List list, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        if ((i & 4) != 0) {
            z2 = false;
        }
        koin.loadModules(list, z, z2);
    }

    public final void loadModules(List<Module> modules, boolean allowOverride, boolean createEagerInstances) {
        Intrinsics.checkNotNullParameter(modules, "modules");
        Set<Module> setFlatten = ModuleKt.flatten(modules);
        this.instanceRegistry.loadModules$koin_core(setFlatten, allowOverride);
        this.scopeRegistry.loadScopes(setFlatten);
        if (createEagerInstances) {
            createEagerInstances();
        }
    }

    public final void unloadModules(List<Module> modules) {
        Intrinsics.checkNotNullParameter(modules, "modules");
        this.instanceRegistry.unloadModules$koin_core(ModuleKt.flatten(modules));
    }

    public final void createEagerInstances() {
        this.logger.debug("Create eager instances ...");
        TimeSource.Monotonic $this$measureTime$iv$iv = TimeSource.Monotonic.INSTANCE;
        long mark$iv$iv = $this$measureTime$iv$iv.m10010markNowz9LOYto();
        this.instanceRegistry.createAllEagerInstances$koin_core();
        long duration = TimeSource.Monotonic.ValueTimeMark.m10015elapsedNowUwyO8pc(mark$iv$iv);
        this.logger.debug("Created eager instances in " + DurationExtKt.m10542getInMsLRDsOJo(duration) + " ms");
    }
}
