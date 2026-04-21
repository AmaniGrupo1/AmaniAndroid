package org.koin.android.ext.android;

import android.content.ComponentCallbacks;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.context.GlobalContext;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;

/* JADX INFO: compiled from: ComponentCallbackExt.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u00004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001aP\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\n\b\u0000\u0010\u0005\u0018\u0001*\u00020\u0006*\u00020\u00022\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\n2\u0016\b\n\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\r\u0018\u00010\fj\u0004\u0018\u0001`\u000eH\u0086\bø\u0001\u0000\u001aE\u0010\u000f\u001a\u0002H\u0005\"\n\b\u0000\u0010\u0005\u0018\u0001*\u00020\u0006*\u00020\u00022\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0016\b\n\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\r\u0018\u00010\fj\u0004\u0018\u0001`\u000eH\u0086\bø\u0001\u0000¢\u0006\u0002\u0010\u0010\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0011"}, d2 = {"getKoin", "Lorg/koin/core/Koin;", "Landroid/content/ComponentCallbacks;", "inject", "Lkotlin/Lazy;", ExifInterface.GPS_DIRECTION_TRUE, "", "qualifier", "Lorg/koin/core/qualifier/Qualifier;", "mode", "Lkotlin/LazyThreadSafetyMode;", "parameters", "Lkotlin/Function0;", "Lorg/koin/core/parameter/ParametersHolder;", "Lorg/koin/core/parameter/ParametersDefinition;", "get", "(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "koin-android_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class ComponentCallbackExtKt {
    public static final Koin getKoin(ComponentCallbacks $this$getKoin) {
        Intrinsics.checkNotNullParameter($this$getKoin, "<this>");
        return $this$getKoin instanceof KoinComponent ? ((KoinComponent) $this$getKoin).getKoin() : GlobalContext.INSTANCE.get();
    }

    public static /* synthetic */ Lazy inject$default(ComponentCallbacks $this$inject_u24default, Qualifier qualifier, LazyThreadSafetyMode mode, Function0 parameters, int i, Object obj) {
        if ((i & 1) != 0) {
            qualifier = null;
        }
        if ((i & 2) != 0) {
            mode = LazyThreadSafetyMode.SYNCHRONIZED;
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
    /* JADX INFO: renamed from: org.koin.android.ext.android.ComponentCallbackExtKt$inject$1, reason: invalid class name */
    /* JADX INFO: compiled from: ComponentCallbackExt.kt */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 176)
    public static final class AnonymousClass1<T> implements Function0<T> {
        final /* synthetic */ Function0<ParametersHolder> $parameters;
        final /* synthetic */ Qualifier $qualifier;
        final /* synthetic */ ComponentCallbacks $this_inject;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(ComponentCallbacks componentCallbacks, Qualifier qualifier, Function0<? extends ParametersHolder> function0) {
            this.$this_inject = componentCallbacks;
            this.$qualifier = qualifier;
            this.$parameters = function0;
        }

        @Override // kotlin.jvm.functions.Function0
        public final T invoke() {
            ComponentCallbacks componentCallbacks = this.$this_inject;
            Qualifier qualifier = this.$qualifier;
            Function0<ParametersHolder> function0 = this.$parameters;
            Scope koinScope = AndroidKoinScopeExtKt.getKoinScope(componentCallbacks);
            Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
            return (T) koinScope.get(Reflection.getOrCreateKotlinClass(Object.class), qualifier, function0);
        }
    }

    public static final /* synthetic */ <T> Lazy<T> inject(ComponentCallbacks $this$inject, Qualifier qualifier, LazyThreadSafetyMode mode, Function0<? extends ParametersHolder> function0) {
        Intrinsics.checkNotNullParameter($this$inject, "<this>");
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.needClassReification();
        return LazyKt.lazy(mode, (Function0) new AnonymousClass1($this$inject, qualifier, function0));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object get$default(ComponentCallbacks $this$get_u24default, Qualifier qualifier, Function0 parameters, int i, Object obj) {
        if ((i & 1) != 0) {
            qualifier = null;
        }
        if ((i & 2) != 0) {
            parameters = null;
        }
        Intrinsics.checkNotNullParameter($this$get_u24default, "<this>");
        Scope koinScope = AndroidKoinScopeExtKt.getKoinScope($this$get_u24default);
        Function0 parameters$iv = parameters;
        Qualifier qualifier$iv = qualifier;
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return koinScope.get(Reflection.getOrCreateKotlinClass(Object.class), qualifier$iv, parameters$iv);
    }

    public static final /* synthetic */ <T> T get(ComponentCallbacks componentCallbacks, Qualifier qualifier, Function0<? extends ParametersHolder> function0) {
        Intrinsics.checkNotNullParameter(componentCallbacks, "<this>");
        Scope koinScope = AndroidKoinScopeExtKt.getKoinScope(componentCallbacks);
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) koinScope.get(Reflection.getOrCreateKotlinClass(Object.class), qualifier, function0);
    }
}
