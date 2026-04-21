package org.koin.core.component;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.Koin;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.mp.KoinPlatformTools;

/* JADX INFO: compiled from: KoinComponent.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u00000\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001aE\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0016\b\n\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007j\u0004\u0018\u0001`\tH\u0086\bø\u0001\u0000¢\u0006\u0002\u0010\n\u001aP\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\u00010\f\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\r\u001a\u00020\u000e2\u0016\b\n\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007j\u0004\u0018\u0001`\tH\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000f"}, d2 = {"get", ExifInterface.GPS_DIRECTION_TRUE, "", "Lorg/koin/core/component/KoinComponent;", "qualifier", "Lorg/koin/core/qualifier/Qualifier;", "parameters", "Lkotlin/Function0;", "Lorg/koin/core/parameter/ParametersHolder;", "Lorg/koin/core/parameter/ParametersDefinition;", "(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "inject", "Lkotlin/Lazy;", "mode", "Lkotlin/LazyThreadSafetyMode;", "koin-core"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class KoinComponentKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object get$default(KoinComponent $this$get_u24default, Qualifier qualifier, Function0 parameters, int i, Object obj) {
        if ((i & 1) != 0) {
            qualifier = null;
        }
        if ((i & 2) != 0) {
            parameters = null;
        }
        Intrinsics.checkNotNullParameter($this$get_u24default, "<this>");
        if ($this$get_u24default instanceof KoinScopeComponent) {
            Scope scope = ((KoinScopeComponent) $this$get_u24default).getScope();
            Function0 parameters$iv = parameters;
            Qualifier qualifier$iv = qualifier;
            Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
            return scope.get(Reflection.getOrCreateKotlinClass(Object.class), qualifier$iv, parameters$iv);
        }
        Koin this_$iv = $this$get_u24default.getKoin();
        Function0 parameters$iv2 = parameters;
        Qualifier qualifier$iv2 = qualifier;
        Scope rootScope = this_$iv.getScopeRegistry().getRootScope();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return rootScope.get(Reflection.getOrCreateKotlinClass(Object.class), qualifier$iv2, parameters$iv2);
    }

    public static final /* synthetic */ <T> T get(KoinComponent koinComponent, Qualifier qualifier, Function0<? extends ParametersHolder> function0) {
        Intrinsics.checkNotNullParameter(koinComponent, "<this>");
        if (koinComponent instanceof KoinScopeComponent) {
            Scope scope = ((KoinScopeComponent) koinComponent).getScope();
            Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
            return (T) scope.get(Reflection.getOrCreateKotlinClass(Object.class), qualifier, function0);
        }
        Scope rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) rootScope.get(Reflection.getOrCreateKotlinClass(Object.class), qualifier, function0);
    }

    public static /* synthetic */ Lazy inject$default(KoinComponent $this$inject_u24default, Qualifier qualifier, LazyThreadSafetyMode mode, Function0 parameters, int i, Object obj) {
        if ((i & 1) != 0) {
            qualifier = null;
        }
        if ((i & 2) != 0) {
            mode = KoinPlatformTools.INSTANCE.defaultLazyMode();
        }
        if ((i & 4) != 0) {
            parameters = null;
        }
        Intrinsics.checkNotNullParameter($this$inject_u24default, "<this>");
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.needClassReification();
        return LazyKt.lazy(mode, (Function0) new AnonymousClass1($this$inject_u24default, qualifier, parameters));
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: org.koin.core.component.KoinComponentKt$inject$1, reason: invalid class name */
    /* JADX INFO: compiled from: KoinComponent.kt */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 176)
    public static final class AnonymousClass1<T> implements Function0<T> {
        final /* synthetic */ Function0<ParametersHolder> $parameters;
        final /* synthetic */ Qualifier $qualifier;
        final /* synthetic */ KoinComponent $this_inject;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(KoinComponent koinComponent, Qualifier qualifier, Function0<? extends ParametersHolder> function0) {
            this.$this_inject = koinComponent;
            this.$qualifier = qualifier;
            this.$parameters = function0;
        }

        @Override // kotlin.jvm.functions.Function0
        public final T invoke() {
            KoinComponent koinComponent = this.$this_inject;
            Qualifier qualifier = this.$qualifier;
            Function0<ParametersHolder> function0 = this.$parameters;
            if (koinComponent instanceof KoinScopeComponent) {
                Scope scope = ((KoinScopeComponent) koinComponent).getScope();
                Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
                return (T) scope.get(Reflection.getOrCreateKotlinClass(Object.class), qualifier, function0);
            }
            Scope rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
            Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
            return (T) rootScope.get(Reflection.getOrCreateKotlinClass(Object.class), qualifier, function0);
        }
    }

    public static final /* synthetic */ <T> Lazy<T> inject(KoinComponent $this$inject, Qualifier qualifier, LazyThreadSafetyMode mode, Function0<? extends ParametersHolder> function0) {
        Intrinsics.checkNotNullParameter($this$inject, "<this>");
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.needClassReification();
        return LazyKt.lazy(mode, (Function0) new AnonymousClass1($this$inject, qualifier, function0));
    }
}
