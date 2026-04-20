package org.koin.core.scope;

import androidx.exifinterface.media.ExifInterface;
import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.time.TimeSource;
import kotlin.time.TimedValue;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.koin.core.Koin;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.error.ClosedScopeException;
import org.koin.core.error.MissingPropertyException;
import org.koin.core.error.MissingScopeValueException;
import org.koin.core.error.NoDefinitionFoundException;
import org.koin.core.instance.InstanceFactory;
import org.koin.core.instance.ResolutionContext;
import org.koin.core.instance.ScopedInstanceFactory;
import org.koin.core.logger.Level;
import org.koin.core.logger.Logger;
import org.koin.core.module.KoinDslMarker;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.qualifier.TypeQualifier;
import org.koin.core.registry.InstanceRegistry;
import org.koin.core.time.DurationExtKt;
import org.koin.ext.KClassExtKt;
import org.koin.mp.KoinPlatformTools;

/* JADX INFO: compiled from: Scope.kt */
/* JADX INFO: loaded from: classes23.dex */
@KoinDslMarker
@Metadata(d1 = {"\u0000²\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b$\b\u0007\u0018\u00002\u00060\u0001j\u0002`\u0002B9\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0010\u0005\u001a\u00060\u0006j\u0002`\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0004\b\u000e\u0010\u000fJ\u0012\u0010 \u001a\f\u0012\b\u0012\u00060\u0006j\u0002`\u00070!H\u0007J\t\u0010*\u001a\u00020\tH\u0086\bJ\u001b\u0010B\u001a\u00020C2\f\u0010D\u001a\b\u0012\u0004\u0012\u00020\u00000!H\u0000¢\u0006\u0002\bEJ\u001f\u0010F\u001a\u00020C2\u0012\u0010G\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00000H\"\u00020\u0000¢\u0006\u0002\u0010IJ\u001f\u0010J\u001a\u00020C2\u0012\u0010G\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00000H\"\u00020\u0000¢\u0006\u0002\u0010IJL\u0010K\u001a\b\u0012\u0004\u0012\u0002HM0L\"\n\b\u0000\u0010M\u0018\u0001*\u00020\u00012\n\b\u0002\u0010N\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010O\u001a\u00020P2\u0016\b\n\u0010Q\u001a\u0010\u0012\u0004\u0012\u000202\u0018\u00010Rj\u0004\u0018\u0001`SH\u0086\bø\u0001\u0000JN\u0010T\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001HM0L\"\n\b\u0000\u0010M\u0018\u0001*\u00020\u00012\n\b\u0002\u0010N\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010O\u001a\u00020P2\u0016\b\n\u0010Q\u001a\u0010\u0012\u0004\u0012\u000202\u0018\u00010Rj\u0004\u0018\u0001`SH\u0086\bø\u0001\u0000JA\u0010U\u001a\u0002HM\"\n\b\u0000\u0010M\u0018\u0001*\u00020\u00012\n\b\u0002\u0010N\u001a\u0004\u0018\u00010\u00042\u0016\b\n\u0010Q\u001a\u0010\u0012\u0004\u0012\u000202\u0018\u00010Rj\u0004\u0018\u0001`SH\u0086\bø\u0001\u0000¢\u0006\u0002\u0010VJ\u001c\u0010W\u001a\u0004\u0018\u0001HM\"\n\b\u0000\u0010M\u0018\u0001*\u00020\u0001H\u0086\b¢\u0006\u0002\u0010%JC\u0010X\u001a\u0004\u0018\u0001HM\"\n\b\u0000\u0010M\u0018\u0001*\u00020\u00012\n\b\u0002\u0010N\u001a\u0004\u0018\u00010\u00042\u0016\b\n\u0010Q\u001a\u0010\u0012\u0004\u0012\u000202\u0018\u00010Rj\u0004\u0018\u0001`SH\u0086\bø\u0001\u0000¢\u0006\u0002\u0010VJC\u0010X\u001a\u0004\u0018\u0001HM\"\u0004\b\u0000\u0010M2\n\u0010Y\u001a\u0006\u0012\u0002\b\u00030Z2\n\b\u0002\u0010N\u001a\u0004\u0018\u00010\u00042\u0016\b\u0002\u0010Q\u001a\u0010\u0012\u0004\u0012\u000202\u0018\u00010Rj\u0004\u0018\u0001`S¢\u0006\u0002\u0010[J\u001f\u0010X\u001a\u0004\u0018\u0001HM\"\u0004\b\u0000\u0010M2\u0006\u0010\\\u001a\u00020]H\u0000¢\u0006\u0004\b^\u0010_JA\u0010U\u001a\u0002HM\"\u0004\b\u0000\u0010M2\n\u0010Y\u001a\u0006\u0012\u0002\b\u00030Z2\n\b\u0002\u0010N\u001a\u0004\u0018\u00010\u00042\u0016\b\u0002\u0010Q\u001a\u0010\u0012\u0004\u0012\u000202\u0018\u00010Rj\u0004\u0018\u0001`S¢\u0006\u0002\u0010[J7\u0010`\u001a\u0002HM\"\u0004\b\u0000\u0010M2\n\u0010Y\u001a\u0006\u0012\u0002\b\u00030Z2\n\b\u0002\u0010N\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010Q\u001a\u0004\u0018\u000102H\u0007¢\u0006\u0002\u0010aJ5\u0010b\u001a\u0002HM\"\u0004\b\u0000\u0010M2\n\u0010Y\u001a\u0006\u0012\u0002\b\u00030Z2\b\u0010N\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010Q\u001a\u0004\u0018\u000102H\u0002¢\u0006\u0002\u0010aJ\u001f\u0010c\u001a\u00020C2\n\u0010Y\u001a\u0006\u0012\u0002\b\u00030Z2\b\u0010N\u001a\u0004\u0018\u00010\u0004H\u0082\bJ$\u0010d\u001a\u00020C2\n\u0010Y\u001a\u0006\u0012\u0002\b\u00030Z2\u0006\u0010e\u001a\u00020fH\u0082\b¢\u0006\u0004\bg\u0010hJ3\u0010i\u001a\u0002HM\"\u0004\b\u0000\u0010M2\b\u0010N\u001a\u0004\u0018\u00010\u00042\n\u0010Y\u001a\u0006\u0012\u0002\b\u00030Z2\b\u0010Q\u001a\u0004\u0018\u000102H\u0002¢\u0006\u0002\u0010jJ\t\u0010k\u001a\u00020CH\u0082\bJ%\u0010l\u001a\u0002HM\"\u0004\b\u0000\u0010M2\b\u0010Q\u001a\u0004\u0018\u0001022\u0006\u0010m\u001a\u00020]H\u0002¢\u0006\u0002\u0010nJ\u001b\u0010o\u001a\b\u0012\u0004\u0012\u000202012\u0006\u0010Q\u001a\u000202H\u0000¢\u0006\u0002\bpJ\u001b\u0010q\u001a\u00020C2\f\u0010r\u001a\b\u0012\u0004\u0012\u00020201H\u0000¢\u0006\u0002\bsJ\u000e\u0010t\u001a\b\u0012\u0004\u0012\u00020201H\u0002J\u001b\u0010u\u001a\u0002HM\"\u0004\b\u0000\u0010M2\u0006\u0010m\u001a\u00020]H\u0002¢\u0006\u0002\u0010_JR\u0010v\u001a\u00020C\"\u0006\b\u0000\u0010M\u0018\u00012\u0006\u0010w\u001a\u0002HM2\n\b\u0002\u0010N\u001a\u0004\u0018\u00010\u00042\u0012\b\u0002\u0010x\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030Z0!2\b\b\u0002\u0010y\u001a\u00020\t2\b\b\u0002\u0010z\u001a\u00020\tH\u0086\b¢\u0006\u0002\u0010{J\u0006\u0010|\u001a\u00020\rJ\u0012\u0010}\u001a\u00020\u00002\n\u0010~\u001a\u00060\u0006j\u0002`\u0007J\u000f\u0010\u007f\u001a\u00020C2\u0007\u0010\u0080\u0001\u001a\u00020-J\u001c\u0010\u0081\u0001\u001a\b\u0012\u0004\u0012\u0002HM0!\"\n\b\u0000\u0010M\u0018\u0001*\u00020\u0001H\u0086\bJ\u001f\u0010\u0081\u0001\u001a\b\u0012\u0004\u0012\u0002HM0!\"\u0004\b\u0000\u0010M2\n\u0010Y\u001a\u0006\u0012\u0002\b\u00030ZJ)\u0010\u0082\u0001\u001a\u0002HM\"\b\b\u0000\u0010M*\u00020\u00012\u0007\u0010\u0083\u0001\u001a\u00020\u00062\u0007\u0010\u0084\u0001\u001a\u0002HM¢\u0006\u0003\u0010\u0085\u0001J\"\u0010\u0086\u0001\u001a\u0004\u0018\u0001HM\"\b\b\u0000\u0010M*\u00020\u00012\u0007\u0010\u0083\u0001\u001a\u00020\u0006¢\u0006\u0003\u0010\u0087\u0001J \u0010\u0082\u0001\u001a\u0002HM\"\b\b\u0000\u0010M*\u00020\u00012\u0007\u0010\u0083\u0001\u001a\u00020\u0006¢\u0006\u0003\u0010\u0087\u0001J\u0007\u0010\u0088\u0001\u001a\u00020CJ\u000b\u0010\u0089\u0001\u001a\u00020\u0006H\u0096\u0080\u0004R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0015\u0010\u0005\u001a\u00060\u0006j\u0002`\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0014R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u001c\u0010\f\u001a\u00020\r8\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR$\u0010\u001b\u001a\u0012\u0012\u0004\u0012\u00020\u00000\u001cj\b\u0012\u0004\u0012\u00020\u0000`\u001dX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR&\u0010\"\u001a\u0004\u0018\u00010\u00018\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b#\u0010\u0018\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u0011\u0010(\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b)\u0010\u0014R\u001e\u0010+\u001a\u0012\u0012\u0004\u0012\u00020-0,j\b\u0012\u0004\u0012\u00020-`.X\u0082\u0004¢\u0006\u0002\n\u0000RF\u0010/\u001a\"\u0012\n\u0012\b\u0012\u0004\u0012\u00020201\u0018\u000100j\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020201\u0018\u0001`38\u0000@\u0000X\u0081\u000e¢\u0006\u0016\n\u0002\u00109\u0012\u0004\b4\u0010\u0018\u001a\u0004\b5\u00106\"\u0004\b7\u00108R6\u0010:\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u0002020100j\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020201`38@X\u0081\u0004¢\u0006\f\u0012\u0004\b;\u0010\u0018\u001a\u0004\b<\u00106R\u000e\u0010=\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010>\u001a\u00020?8F¢\u0006\u0006\u001a\u0004\b@\u0010A\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u008a\u0001"}, d2 = {"Lorg/koin/core/scope/Scope;", "", "Lorg/koin/mp/Lockable;", "scopeQualifier", "Lorg/koin/core/qualifier/Qualifier;", TtmlNode.ATTR_ID, "", "Lorg/koin/core/scope/ScopeID;", "isRoot", "", "scopeArchetype", "Lorg/koin/core/qualifier/TypeQualifier;", "_koin", "Lorg/koin/core/Koin;", "<init>", "(Lorg/koin/core/qualifier/Qualifier;Ljava/lang/String;ZLorg/koin/core/qualifier/TypeQualifier;Lorg/koin/core/Koin;)V", "getScopeQualifier", "()Lorg/koin/core/qualifier/Qualifier;", "getId", "()Ljava/lang/String;", "()Z", "getScopeArchetype", "()Lorg/koin/core/qualifier/TypeQualifier;", "get_koin$annotations", "()V", "get_koin", "()Lorg/koin/core/Koin;", "linkedScopes", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "getLinkedScopes$koin_core", "()Ljava/util/ArrayList;", "getLinkedScopeIds", "", "sourceValue", "getSourceValue$annotations", "getSourceValue", "()Ljava/lang/Object;", "setSourceValue", "(Ljava/lang/Object;)V", "closed", "getClosed", "isNotClosed", "_callbacks", "Ljava/util/LinkedHashSet;", "Lorg/koin/core/scope/ScopeCallback;", "Lkotlin/collections/LinkedHashSet;", "_parameterStack", "Ljava/lang/ThreadLocal;", "Lkotlin/collections/ArrayDeque;", "Lorg/koin/core/parameter/ParametersHolder;", "Lorg/koin/mp/ThreadLocal;", "get_parameterStack$koin_core$annotations", "get_parameterStack$koin_core", "()Ljava/lang/ThreadLocal;", "set_parameterStack$koin_core", "(Ljava/lang/ThreadLocal;)V", "Ljava/lang/ThreadLocal;", "parameterStack", "getParameterStack$koin_core$annotations", "getParameterStack$koin_core", "_closed", "logger", "Lorg/koin/core/logger/Logger;", "getLogger", "()Lorg/koin/core/logger/Logger;", "create", "", "links", "create$koin_core", "linkTo", "scopes", "", "([Lorg/koin/core/scope/Scope;)V", "unlink", "inject", "Lkotlin/Lazy;", ExifInterface.GPS_DIRECTION_TRUE, "qualifier", "mode", "Lkotlin/LazyThreadSafetyMode;", "parameters", "Lkotlin/Function0;", "Lorg/koin/core/parameter/ParametersDefinition;", "injectOrNull", "get", "(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "getSource", "getOrNull", "clazz", "Lkotlin/reflect/KClass;", "(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "ctx", "Lorg/koin/core/instance/ResolutionContext;", "getOrNull$koin_core", "(Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;", "getWithParameters", "(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;", "resolve", "logInstanceRequest", "logInstanceDuration", "duration", "Lkotlin/time/Duration;", "logInstanceDuration-HG0u8IE", "(Lkotlin/reflect/KClass;J)V", "resolveInstance", "(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;", "checkScopeIsOpen", "stackParametersCall", "instanceContext", "(Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;", "onParameterOnStack", "onParameterOnStack$koin_core", "clearParameterStack", "stack", "clearParameterStack$koin_core", "getOrCreateParameterStack", "resolveFromContext", "declare", "instance", "secondaryTypes", "allowOverride", "holdInstance", "(Ljava/lang/Object;Lorg/koin/core/qualifier/Qualifier;Ljava/util/List;ZZ)V", "getKoin", "getScope", "scopeID", "registerCallback", "callback", "getAll", "getProperty", "key", "defaultValue", "(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;", "getPropertyOrNull", "(Ljava/lang/String;)Ljava/lang/Object;", "close", "toString", "koin-core"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class Scope {
    private final LinkedHashSet<ScopeCallback> _callbacks;
    private volatile boolean _closed;
    private final Koin _koin;
    private volatile ThreadLocal<ArrayDeque<ParametersHolder>> _parameterStack;
    private final String id;
    private final boolean isRoot;
    private final ArrayList<Scope> linkedScopes;
    private final TypeQualifier scopeArchetype;
    private final Qualifier scopeQualifier;
    private Object sourceValue;

    public static /* synthetic */ void getParameterStack$koin_core$annotations() {
    }

    public static /* synthetic */ void getSourceValue$annotations() {
    }

    public static /* synthetic */ void get_koin$annotations() {
    }

    public static /* synthetic */ void get_parameterStack$koin_core$annotations() {
    }

    public Scope(Qualifier scopeQualifier, String id, boolean isRoot, TypeQualifier scopeArchetype, Koin _koin) {
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(_koin, "_koin");
        this.scopeQualifier = scopeQualifier;
        this.id = id;
        this.isRoot = isRoot;
        this.scopeArchetype = scopeArchetype;
        this._koin = _koin;
        this.linkedScopes = new ArrayList<>();
        this._callbacks = new LinkedHashSet<>();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ Scope(Qualifier qualifier, String str, boolean z, TypeQualifier typeQualifier, Koin koin, int i, DefaultConstructorMarker defaultConstructorMarker) {
        boolean z2;
        TypeQualifier typeQualifier2;
        if ((i & 4) == 0) {
            z2 = z;
        } else {
            z2 = false;
        }
        if ((i & 8) == 0) {
            typeQualifier2 = typeQualifier;
        } else {
            typeQualifier2 = null;
        }
        this(qualifier, str, z2, typeQualifier2, koin);
    }

    public final Qualifier getScopeQualifier() {
        return this.scopeQualifier;
    }

    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: isRoot, reason: from getter */
    public final boolean getIsRoot() {
        return this.isRoot;
    }

    public final TypeQualifier getScopeArchetype() {
        return this.scopeArchetype;
    }

    public final Koin get_koin() {
        return this._koin;
    }

    public final ArrayList<Scope> getLinkedScopes$koin_core() {
        return this.linkedScopes;
    }

    public final List<String> getLinkedScopeIds() {
        Iterable $this$map$iv = this.linkedScopes;
        Collection destination$iv$iv = new ArrayList(CollectionsKt.collectionSizeOrDefault($this$map$iv, 10));
        for (Object item$iv$iv : $this$map$iv) {
            Scope it = (Scope) item$iv$iv;
            destination$iv$iv.add(it.id);
        }
        return (List) destination$iv$iv;
    }

    public final Object getSourceValue() {
        return this.sourceValue;
    }

    public final void setSourceValue(Object obj) {
        this.sourceValue = obj;
    }

    /* JADX INFO: renamed from: getClosed, reason: from getter */
    public final boolean get_closed() {
        return this._closed;
    }

    public final boolean isNotClosed() {
        return !get_closed();
    }

    public final ThreadLocal<ArrayDeque<ParametersHolder>> get_parameterStack$koin_core() {
        return this._parameterStack;
    }

    public final void set_parameterStack$koin_core(ThreadLocal<ArrayDeque<ParametersHolder>> threadLocal) {
        this._parameterStack = threadLocal;
    }

    public final ThreadLocal<ArrayDeque<ParametersHolder>> getParameterStack$koin_core() {
        ThreadLocal<ArrayDeque<ParametersHolder>> threadLocal = this._parameterStack;
        return threadLocal == null ? (ThreadLocal) KoinPlatformTools.INSTANCE.m10543synchronized(this, new Function0() { // from class: org.koin.core.scope.Scope$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Scope._get_parameterStack_$lambda$0(this.f$0);
            }
        }) : threadLocal;
    }

    static final ThreadLocal _get_parameterStack_$lambda$0(Scope this$0) {
        ThreadLocal<ArrayDeque<ParametersHolder>> threadLocal = this$0._parameterStack;
        if (threadLocal != null) {
            return threadLocal;
        }
        ThreadLocal<ArrayDeque<ParametersHolder>> threadLocal2 = new ThreadLocal<>();
        this$0._parameterStack = threadLocal2;
        return threadLocal2;
    }

    public final Logger getLogger() {
        return this._koin.getLogger();
    }

    public final void create$koin_core(List<Scope> links) {
        Intrinsics.checkNotNullParameter(links, "links");
        this.linkedScopes.addAll(links);
    }

    public final void linkTo(Scope... scopes) {
        Intrinsics.checkNotNullParameter(scopes, "scopes");
        if (!this.isRoot) {
            this.linkedScopes.addAll(0, ArraysKt.toList(scopes));
            return;
        }
        throw new IllegalStateException("Can't add scope link to a root scope".toString());
    }

    public final void unlink(Scope... scopes) {
        Intrinsics.checkNotNullParameter(scopes, "scopes");
        if (!this.isRoot) {
            CollectionsKt.removeAll(this.linkedScopes, scopes);
            return;
        }
        throw new IllegalStateException("Can't remove scope link to a root scope".toString());
    }

    public static /* synthetic */ Lazy inject$default(Scope $this, Qualifier qualifier, LazyThreadSafetyMode mode, Function0 parameters, int i, Object obj) {
        if ((i & 1) != 0) {
            qualifier = null;
        }
        if ((i & 2) != 0) {
            mode = LazyThreadSafetyMode.SYNCHRONIZED;
        }
        if ((i & 4) != 0) {
            parameters = null;
        }
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.needClassReification();
        return LazyKt.lazy(mode, (Function0) $this.new C08441(qualifier, parameters));
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: org.koin.core.scope.Scope$inject$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Scope.kt */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 176)
    public static final class C08441<T> implements Function0<T> {
        final /* synthetic */ Function0<ParametersHolder> $parameters;
        final /* synthetic */ Qualifier $qualifier;

        /* JADX WARN: Multi-variable type inference failed */
        public C08441(Qualifier qualifier, Function0<? extends ParametersHolder> function0) {
            this.$qualifier = qualifier;
            this.$parameters = function0;
        }

        @Override // kotlin.jvm.functions.Function0
        public final T invoke() {
            Scope scope = Scope.this;
            Qualifier qualifier = this.$qualifier;
            Function0<ParametersHolder> function0 = this.$parameters;
            Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
            return (T) scope.get(Reflection.getOrCreateKotlinClass(Object.class), qualifier, function0);
        }
    }

    public final /* synthetic */ <T> Lazy<T> inject(Qualifier qualifier, LazyThreadSafetyMode mode, Function0<? extends ParametersHolder> parameters) {
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.needClassReification();
        return LazyKt.lazy(mode, (Function0) new C08441(qualifier, parameters));
    }

    public static /* synthetic */ Lazy injectOrNull$default(Scope $this, Qualifier qualifier, LazyThreadSafetyMode mode, Function0 parameters, int i, Object obj) {
        if ((i & 1) != 0) {
            qualifier = null;
        }
        if ((i & 2) != 0) {
            mode = LazyThreadSafetyMode.SYNCHRONIZED;
        }
        if ((i & 4) != 0) {
            parameters = null;
        }
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.needClassReification();
        return LazyKt.lazy(mode, (Function0) $this.new C08451(qualifier, parameters));
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: org.koin.core.scope.Scope$injectOrNull$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Scope.kt */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 176)
    public static final class C08451<T> implements Function0<T> {
        final /* synthetic */ Function0<ParametersHolder> $parameters;
        final /* synthetic */ Qualifier $qualifier;

        /* JADX WARN: Multi-variable type inference failed */
        public C08451(Qualifier qualifier, Function0<? extends ParametersHolder> function0) {
            this.$qualifier = qualifier;
            this.$parameters = function0;
        }

        @Override // kotlin.jvm.functions.Function0
        public final T invoke() {
            Scope scope = Scope.this;
            Qualifier qualifier = this.$qualifier;
            Function0<ParametersHolder> function0 = this.$parameters;
            Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
            return (T) scope.getOrNull(Reflection.getOrCreateKotlinClass(Object.class), qualifier, function0);
        }
    }

    public final /* synthetic */ <T> Lazy<T> injectOrNull(Qualifier qualifier, LazyThreadSafetyMode mode, Function0<? extends ParametersHolder> parameters) {
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.needClassReification();
        return LazyKt.lazy(mode, (Function0) new C08451(qualifier, parameters));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object get$default(Scope scope, Qualifier qualifier, Function0 parameters, int i, Object obj) {
        if ((i & 1) != 0) {
            qualifier = null;
        }
        if ((i & 2) != 0) {
            parameters = null;
        }
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return scope.get(Reflection.getOrCreateKotlinClass(Object.class), qualifier, parameters);
    }

    public final /* synthetic */ <T> T get(Qualifier qualifier, Function0<? extends ParametersHolder> parameters) {
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) get(Reflection.getOrCreateKotlinClass(Object.class), qualifier, parameters);
    }

    public final /* synthetic */ <T> T getSource() {
        T t = (T) getSourceValue();
        Intrinsics.reifiedOperationMarker(2, ExifInterface.GPS_DIRECTION_TRUE);
        return t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object getOrNull$default(Scope scope, Qualifier qualifier, Function0 parameters, int i, Object obj) {
        if ((i & 1) != 0) {
            qualifier = null;
        }
        if ((i & 2) != 0) {
            parameters = null;
        }
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return scope.getOrNull(Reflection.getOrCreateKotlinClass(Object.class), qualifier, parameters);
    }

    public final /* synthetic */ <T> T getOrNull(Qualifier qualifier, Function0<? extends ParametersHolder> parameters) {
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) getOrNull(Reflection.getOrCreateKotlinClass(Object.class), qualifier, parameters);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object getOrNull$default(Scope scope, KClass kClass, Qualifier qualifier, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            qualifier = null;
        }
        if ((i & 4) != 0) {
            function0 = null;
        }
        return scope.getOrNull(kClass, qualifier, function0);
    }

    public final <T> T getOrNull(KClass<?> clazz, Qualifier qualifier, Function0<? extends ParametersHolder> parameters) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        try {
            return (T) get(clazz, qualifier, parameters);
        } catch (ClosedScopeException e) {
            this._koin.getLogger().debug("* Scope closed - no instance found for " + KClassExtKt.getFullName(clazz) + " on scope " + this);
            return null;
        } catch (MissingScopeValueException e2) {
            this._koin.getLogger().debug("* No Scoped value found for type '" + KClassExtKt.getFullName(clazz) + "' on scope '" + this + '\'');
            return null;
        } catch (NoDefinitionFoundException e3) {
            this._koin.getLogger().debug("* No instance found for type '" + KClassExtKt.getFullName(clazz) + "' on scope '" + this + '\'');
            return null;
        }
    }

    public final <T> T getOrNull$koin_core(ResolutionContext ctx) {
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        try {
            return (T) getWithParameters(ctx.getClazz(), ctx.getQualifier(), ctx.getParameters());
        } catch (ClosedScopeException e) {
            this._koin.getLogger().debug("* Scope closed - no instance found for " + KClassExtKt.getFullName(ctx.getClazz()) + " on scope " + this);
            return null;
        } catch (NoDefinitionFoundException e2) {
            this._koin.getLogger().debug("* No instance found for type '" + KClassExtKt.getFullName(ctx.getClazz()) + "' on scope '" + this + '\'');
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object get$default(Scope scope, KClass kClass, Qualifier qualifier, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            qualifier = null;
        }
        if ((i & 4) != 0) {
            function0 = null;
        }
        return scope.get(kClass, qualifier, function0);
    }

    public final <T> T get(KClass<?> clazz, Qualifier qualifier, Function0<? extends ParametersHolder> parameters) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return (T) resolve(clazz, qualifier, parameters != null ? parameters.invoke() : null);
    }

    public static /* synthetic */ Object getWithParameters$default(Scope scope, KClass kClass, Qualifier qualifier, ParametersHolder parametersHolder, int i, Object obj) {
        if ((i & 2) != 0) {
            qualifier = null;
        }
        if ((i & 4) != 0) {
            parametersHolder = null;
        }
        return scope.getWithParameters(kClass, qualifier, parametersHolder);
    }

    public final <T> T getWithParameters(KClass<?> clazz, Qualifier qualifier, ParametersHolder parameters) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return (T) resolve(clazz, qualifier, parameters);
    }

    static /* synthetic */ Object resolve$default(Scope scope, KClass kClass, Qualifier qualifier, ParametersHolder parametersHolder, int i, Object obj) {
        if ((i & 4) != 0) {
            parametersHolder = null;
        }
        return scope.resolve(kClass, qualifier, parametersHolder);
    }

    private final <T> T resolve(KClass<?> clazz, Qualifier qualifier, ParametersHolder parameters) {
        String str;
        if (!(this._koin.getLogger().getLevel().compareTo(Level.DEBUG) <= 0)) {
            return (T) resolveInstance(qualifier, clazz, parameters);
        }
        if (qualifier == null || (str = " with qualifier '" + qualifier + '\'') == null) {
            str = "";
        }
        this._koin.getLogger().display(Level.DEBUG, "|- '" + KClassExtKt.getFullName(clazz) + '\'' + str + (this.isRoot ? "" : " - scope:'" + this.id + '\'') + "...");
        TimedValue timedValue = new TimedValue(resolveInstance(qualifier, clazz, parameters), TimeSource.Monotonic.ValueTimeMark.m10015elapsedNowUwyO8pc(TimeSource.Monotonic.INSTANCE.m10010markNowz9LOYto()), null);
        this._koin.getLogger().display(Level.DEBUG, "|- '" + KClassExtKt.getFullName(clazz) + "' in " + DurationExtKt.m10542getInMsLRDsOJo(timedValue.m10032getDurationUwyO8pc()) + " ms");
        return (T) timedValue.getValue();
    }

    private final void logInstanceRequest(KClass<?> clazz, Qualifier qualifier) {
        String qualifierString;
        if (qualifier == null || (qualifierString = " with qualifier '" + qualifier + '\'') == null) {
            qualifierString = "";
        }
        String scopeId = this.isRoot ? "" : " - scope:'" + this.id + '\'';
        this._koin.getLogger().display(Level.DEBUG, "|- '" + KClassExtKt.getFullName(clazz) + '\'' + qualifierString + scopeId + "...");
    }

    /* JADX INFO: renamed from: logInstanceDuration-HG0u8IE, reason: not valid java name */
    private final void m10541logInstanceDurationHG0u8IE(KClass<?> clazz, long duration) {
        this._koin.getLogger().display(Level.DEBUG, "|- '" + KClassExtKt.getFullName(clazz) + "' in " + DurationExtKt.m10542getInMsLRDsOJo(duration) + " ms");
    }

    private final <T> T resolveInstance(Qualifier qualifier, KClass<?> clazz, ParametersHolder parameters) throws ClosedScopeException {
        if (this._closed) {
            throw new ClosedScopeException("Scope '" + this.id + "' is closed");
        }
        return (T) stackParametersCall(parameters, new ResolutionContext(this._koin.getLogger(), this, clazz, qualifier, parameters));
    }

    private final void checkScopeIsOpen() throws ClosedScopeException {
        if (this._closed) {
            throw new ClosedScopeException("Scope '" + this.id + "' is closed");
        }
    }

    private final <T> T stackParametersCall(ParametersHolder parameters, ResolutionContext instanceContext) {
        if (parameters == null) {
            return (T) resolveFromContext(instanceContext);
        }
        Logger logger = this._koin.getLogger();
        Level level = Level.DEBUG;
        if (logger.getLevel().compareTo(level) <= 0) {
            logger.display(level, "| >> parameters " + parameters);
        }
        ArrayDeque<ParametersHolder> arrayDequeOnParameterOnStack$koin_core = onParameterOnStack$koin_core(parameters);
        try {
            return (T) resolveFromContext(instanceContext);
        } finally {
            this._koin.getLogger().debug("| << parameters");
            clearParameterStack$koin_core(arrayDequeOnParameterOnStack$koin_core);
        }
    }

    public final ArrayDeque<ParametersHolder> onParameterOnStack$koin_core(ParametersHolder parameters) {
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        ArrayDeque<ParametersHolder> orCreateParameterStack = getOrCreateParameterStack();
        orCreateParameterStack.addFirst(parameters);
        return orCreateParameterStack;
    }

    public final void clearParameterStack$koin_core(ArrayDeque<ParametersHolder> stack) {
        Intrinsics.checkNotNullParameter(stack, "stack");
        stack.removeFirstOrNull();
        if (stack.isEmpty()) {
            getParameterStack$koin_core().remove();
        }
    }

    private final ArrayDeque<ParametersHolder> getOrCreateParameterStack() {
        ArrayDeque<ParametersHolder> arrayDeque = getParameterStack$koin_core().get();
        if (arrayDeque != null) {
            return arrayDeque;
        }
        ArrayDeque<ParametersHolder> arrayDeque2 = new ArrayDeque<>();
        getParameterStack$koin_core().set(arrayDeque2);
        return arrayDeque2;
    }

    private final <T> T resolveFromContext(ResolutionContext instanceContext) {
        return (T) this._koin.getResolver().resolveFromContext(this, instanceContext);
    }

    public static /* synthetic */ void declare$default(Scope $this, Object instance, Qualifier qualifier, List secondaryTypes, boolean allowOverride, boolean holdInstance, int i, Object obj) {
        List secondaryTypes2;
        Qualifier qualifier2 = (i & 2) != 0 ? null : qualifier;
        if ((i & 4) != 0) {
            List secondaryTypes3 = CollectionsKt.emptyList();
            secondaryTypes2 = secondaryTypes3;
        } else {
            secondaryTypes2 = secondaryTypes;
        }
        boolean allowOverride2 = (i & 8) != 0 ? true : allowOverride;
        boolean holdInstance2 = (i & 16) != 0 ? false : holdInstance;
        Intrinsics.checkNotNullParameter(secondaryTypes2, "secondaryTypes");
        KoinPlatformTools koinPlatformTools = KoinPlatformTools.INSTANCE;
        Intrinsics.needClassReification();
        koinPlatformTools.m10543synchronized($this, $this.new AnonymousClass1(instance, qualifier2, secondaryTypes2, allowOverride2, holdInstance2));
    }

    /* JADX INFO: renamed from: org.koin.core.scope.Scope$declare$1, reason: invalid class name */
    /* JADX INFO: compiled from: Scope.kt */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 176)
    public static final class AnonymousClass1 implements Function0<Unit> {
        final /* synthetic */ boolean $allowOverride;
        final /* synthetic */ boolean $holdInstance;
        final /* synthetic */ T $instance;
        final /* synthetic */ Qualifier $qualifier;
        final /* synthetic */ List<KClass<?>> $secondaryTypes;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(T t, Qualifier qualifier, List<? extends KClass<?>> list, boolean z, boolean z2) {
            this.$instance = t;
            this.$qualifier = qualifier;
            this.$secondaryTypes = list;
            this.$allowOverride = z;
            this.$holdInstance = z2;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            ScopedInstanceFactory existingFactory$iv;
            boolean z;
            String value;
            String value2;
            InstanceRegistry this_$iv = Scope.this.get_koin().getInstanceRegistry();
            final Object instance$iv = this.$instance;
            Qualifier scopeQualifier$iv = Scope.this.getScopeQualifier();
            String scopeID$iv = Scope.this.getId();
            Qualifier qualifier$iv = this.$qualifier;
            List<KClass<?>> list = this.$secondaryTypes;
            boolean allowOverride$iv = this.$allowOverride;
            boolean holdInstance$iv = this.$holdInstance;
            int $i$f$scopeDeclaredInstance = 0;
            Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
            final KClass primaryType$iv = Reflection.getOrCreateKotlinClass(Object.class);
            StringBuilder sb = new StringBuilder();
            StringBuilder $this$indexKey_u24lambda_u240$iv$iv = sb;
            $this$indexKey_u24lambda_u240$iv$iv.append(KClassExtKt.getFullName(primaryType$iv));
            $this$indexKey_u24lambda_u240$iv$iv.append(AbstractJsonLexerKt.COLON);
            $this$indexKey_u24lambda_u240$iv$iv.append((qualifier$iv == null || (value2 = qualifier$iv.getValue()) == null) ? "" : value2);
            $this$indexKey_u24lambda_u240$iv$iv.append(AbstractJsonLexerKt.COLON);
            $this$indexKey_u24lambda_u240$iv$iv.append(scopeQualifier$iv);
            String indexKey$iv = sb.toString();
            InstanceFactory<?> instanceFactory = this_$iv.getInstances().get(indexKey$iv);
            ScopedInstanceFactory existingFactory$iv2 = instanceFactory instanceof ScopedInstanceFactory ? (ScopedInstanceFactory) instanceFactory : null;
            if (existingFactory$iv2 != null) {
                existingFactory$iv2.saveValue(scopeID$iv, instance$iv);
                return;
            }
            Intrinsics.needClassReification();
            Function2 definitionFunction$iv = !holdInstance$iv ? new Function2<Scope, ParametersHolder, T>() { // from class: org.koin.core.scope.Scope$declare$1$invoke$$inlined$scopeDeclaredInstance$1
                @Override // kotlin.jvm.functions.Function2
                public final T invoke(Scope scope, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(scope, "<this>");
                    Intrinsics.checkNotNullParameter(it, "it");
                    throw new IllegalStateException(("Declared definition of type '" + primaryType$iv + "' shouldn't be executed").toString());
                }
            } : new Function2<Scope, ParametersHolder, T>() { // from class: org.koin.core.scope.Scope$declare$1$invoke$$inlined$scopeDeclaredInstance$2
                @Override // kotlin.jvm.functions.Function2
                public final T invoke(Scope scope, ParametersHolder it) {
                    Intrinsics.checkNotNullParameter(scope, "<this>");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return (T) instance$iv;
                }
            };
            Kind kind$iv$iv = Kind.Scoped;
            Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
            BeanDefinition def$iv = new BeanDefinition(scopeQualifier$iv, Reflection.getOrCreateKotlinClass(Object.class), qualifier$iv, definitionFunction$iv, kind$iv$iv, list, null, 64, null);
            ScopedInstanceFactory factory$iv = new ScopedInstanceFactory(def$iv, holdInstance$iv);
            boolean hasFactoryAllowOverride$iv = Intrinsics.areEqual((Object) factory$iv.getBeanDefinition().getAllowOverride(), (Object) true);
            if (allowOverride$iv || hasFactoryAllowOverride$iv) {
                existingFactory$iv = existingFactory$iv2;
                z = true;
            } else {
                existingFactory$iv = existingFactory$iv2;
                z = false;
            }
            InstanceRegistry.saveMapping$default(this_$iv, z, indexKey$iv, factory$iv, false, 8, null);
            Iterable $this$forEach$iv$iv = def$iv.getSecondaryTypes();
            for (Object element$iv$iv : $this$forEach$iv$iv) {
                KClass clazz$iv = (KClass) element$iv$iv;
                Qualifier typeQualifier$iv$iv = def$iv.getQualifier();
                Qualifier scopeQualifier$iv$iv = def$iv.getScopeQualifier();
                StringBuilder sb2 = new StringBuilder();
                StringBuilder $this$indexKey_u24lambda_u240$iv$iv2 = sb2;
                int $i$f$scopeDeclaredInstance2 = $i$f$scopeDeclaredInstance;
                $this$indexKey_u24lambda_u240$iv$iv2.append(KClassExtKt.getFullName(clazz$iv));
                $this$indexKey_u24lambda_u240$iv$iv2.append(AbstractJsonLexerKt.COLON);
                if (typeQualifier$iv$iv == null || (value = typeQualifier$iv$iv.getValue()) == null) {
                    value = "";
                }
                $this$indexKey_u24lambda_u240$iv$iv2.append(value);
                $this$indexKey_u24lambda_u240$iv$iv2.append(AbstractJsonLexerKt.COLON);
                $this$indexKey_u24lambda_u240$iv$iv2.append(scopeQualifier$iv$iv);
                String index$iv = sb2.toString();
                InstanceRegistry.saveMapping$default(this_$iv, allowOverride$iv || hasFactoryAllowOverride$iv, index$iv, factory$iv, false, 8, null);
                $i$f$scopeDeclaredInstance = $i$f$scopeDeclaredInstance2;
            }
            factory$iv.saveValue(scopeID$iv, instance$iv);
        }
    }

    public final /* synthetic */ <T> void declare(T instance, Qualifier qualifier, List<? extends KClass<?>> secondaryTypes, boolean allowOverride, boolean holdInstance) {
        Intrinsics.checkNotNullParameter(secondaryTypes, "secondaryTypes");
        KoinPlatformTools koinPlatformTools = KoinPlatformTools.INSTANCE;
        Intrinsics.needClassReification();
        koinPlatformTools.m10543synchronized(this, new AnonymousClass1(instance, qualifier, secondaryTypes, allowOverride, holdInstance));
    }

    /* JADX INFO: renamed from: getKoin, reason: from getter */
    public final Koin get_koin() {
        return this._koin;
    }

    public final Scope getScope(String scopeID) {
        Intrinsics.checkNotNullParameter(scopeID, "scopeID");
        return get_koin().getScope(scopeID);
    }

    public final void registerCallback(ScopeCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this._callbacks.add(callback);
    }

    public final /* synthetic */ <T> List<T> getAll() {
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return getAll(Reflection.getOrCreateKotlinClass(Object.class));
    }

    public final <T> List<T> getAll(KClass<?> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        ResolutionContext context = new ResolutionContext(this._koin.getLogger(), this, clazz, null, null, 24, null);
        context.setScopeArchetype(this.scopeArchetype);
        List<T> all$koin_core = this._koin.getInstanceRegistry().getAll$koin_core(clazz, context);
        Iterable $this$flatMap$iv = this.linkedScopes;
        Collection destination$iv$iv = new ArrayList();
        for (Object element$iv$iv : $this$flatMap$iv) {
            Scope scope = (Scope) element$iv$iv;
            Iterable list$iv$iv = scope.getAll(clazz);
            CollectionsKt.addAll(destination$iv$iv, list$iv$iv);
        }
        return CollectionsKt.plus((Collection) all$koin_core, destination$iv$iv);
    }

    public final <T> T getProperty(String key, T defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return (T) this._koin.getProperty(key, defaultValue);
    }

    public final <T> T getPropertyOrNull(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return (T) this._koin.getProperty(key);
    }

    public final <T> T getProperty(String key) throws MissingPropertyException {
        Intrinsics.checkNotNullParameter(key, "key");
        T t = (T) this._koin.getProperty(key);
        if (t != null) {
            return t;
        }
        throw new MissingPropertyException("Property '" + key + "' not found");
    }

    public final void close() {
        KoinPlatformTools.INSTANCE.m10543synchronized(this, new Function0() { // from class: org.koin.core.scope.Scope$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Scope.close$lambda$0(this.f$0);
            }
        });
    }

    static final Unit close$lambda$0(Scope this$0) {
        ArrayDeque<ParametersHolder> arrayDeque;
        this$0._koin.getLogger().debug("|- (-) Scope - id:'" + this$0.id + '\'');
        Iterable $this$forEach$iv = this$0._callbacks;
        for (Object element$iv : $this$forEach$iv) {
            ScopeCallback it = (ScopeCallback) element$iv;
            it.onScopeClose(this$0);
        }
        this$0._callbacks.clear();
        this$0._closed = true;
        this$0.sourceValue = null;
        ThreadLocal<ArrayDeque<ParametersHolder>> threadLocal = this$0._parameterStack;
        if (threadLocal != null && (arrayDeque = threadLocal.get()) != null) {
            arrayDeque.clear();
        }
        this$0._parameterStack = null;
        this$0._koin.getScopeRegistry().deleteScope$koin_core(this$0);
        return Unit.INSTANCE;
    }

    public String toString() {
        return "['" + this.id + "']";
    }
}
