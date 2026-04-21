package org.koin.androidx.scope;

import android.content.ComponentCallbacks;
import androidx.activity.ComponentActivity;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.android.scope.AndroidScopeComponent;
import org.koin.core.Koin;
import org.koin.core.component.KoinScopeComponentKt;
import org.koin.core.qualifier.TypeQualifier;
import org.koin.core.scope.Scope;
import org.koin.core.scope.ScopeCallback;

/* JADX INFO: compiled from: ComponentActivityExt.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u00004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u001a\u0010\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003\u001a\u0010\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003\u001a\u0018\u0010\u0005\u001a\u00020\u0002*\u00020\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0007\u001a\f\u0010\b\u001a\u0004\u0018\u00010\u0002*\u00020\u0003\u001a\n\u0010\t\u001a\u00020\u0002*\u00020\u0003\u001a\u001c\u0010\n\u001a\u00020\u0002*\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0000\u001a\u0014\u0010\u0010\u001a\u00020\u0011*\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0002H\u0000\u001a\n\u0010\u0013\u001a\u00020\u0002*\u00020\u0003¨\u0006\u0014"}, d2 = {"activityScope", "Lkotlin/Lazy;", "Lorg/koin/core/scope/Scope;", "Landroidx/activity/ComponentActivity;", "activityRetainedScope", "createScope", "source", "", "getScopeOrNull", "createActivityScope", "createScopeForCurrentLifecycle", "Landroid/content/ComponentCallbacks;", "owner", "Landroidx/lifecycle/LifecycleOwner;", "scopeArchetype", "Lorg/koin/core/qualifier/TypeQualifier;", "registerScopeForLifecycle", "", "scope", "createActivityRetainedScope", "koin-android_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class ComponentActivityExtKt {
    public static final Lazy<Scope> activityScope(final ComponentActivity $this$activityScope) {
        Intrinsics.checkNotNullParameter($this$activityScope, "<this>");
        return LazyKt.lazy(new Function0() { // from class: org.koin.androidx.scope.ComponentActivityExtKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ComponentActivityExtKt.createActivityScope($this$activityScope);
            }
        });
    }

    public static final Lazy<Scope> activityRetainedScope(final ComponentActivity $this$activityRetainedScope) {
        Intrinsics.checkNotNullParameter($this$activityRetainedScope, "<this>");
        return LazyKt.lazy(new Function0() { // from class: org.koin.androidx.scope.ComponentActivityExtKt$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ComponentActivityExtKt.createActivityRetainedScope($this$activityRetainedScope);
            }
        });
    }

    public static final Scope createScope(ComponentActivity $this$createScope, Object source) {
        Intrinsics.checkNotNullParameter($this$createScope, "<this>");
        return Koin.createScope$default(ComponentCallbackExtKt.getKoin($this$createScope), KoinScopeComponentKt.getScopeId($this$createScope), KoinScopeComponentKt.getScopeName($this$createScope), source, null, 8, null);
    }

    public static /* synthetic */ Scope createScope$default(ComponentActivity componentActivity, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            obj = null;
        }
        return createScope(componentActivity, obj);
    }

    public static final Scope getScopeOrNull(ComponentActivity $this$getScopeOrNull) {
        Intrinsics.checkNotNullParameter($this$getScopeOrNull, "<this>");
        return ComponentCallbackExtKt.getKoin($this$getScopeOrNull).getScopeOrNull(KoinScopeComponentKt.getScopeId($this$getScopeOrNull));
    }

    public static final Scope createActivityScope(ComponentActivity $this$createActivityScope) {
        Intrinsics.checkNotNullParameter($this$createActivityScope, "<this>");
        if (!($this$createActivityScope instanceof AndroidScopeComponent)) {
            throw new IllegalStateException("Activity should implement AndroidScopeComponent".toString());
        }
        Scope scopeOrNull = ComponentCallbackExtKt.getKoin($this$createActivityScope).getScopeOrNull(KoinScopeComponentKt.getScopeId($this$createActivityScope));
        return scopeOrNull == null ? createScopeForCurrentLifecycle($this$createActivityScope, $this$createActivityScope, AndroidScopeArchetypesKt.getActivityScopeArchetype()) : scopeOrNull;
    }

    public static final Scope createScopeForCurrentLifecycle(ComponentCallbacks $this$createScopeForCurrentLifecycle, final LifecycleOwner owner, TypeQualifier scopeArchetype) {
        Intrinsics.checkNotNullParameter($this$createScopeForCurrentLifecycle, "<this>");
        Intrinsics.checkNotNullParameter(owner, "owner");
        Intrinsics.checkNotNullParameter(scopeArchetype, "scopeArchetype");
        Scope scope = ComponentCallbackExtKt.getKoin($this$createScopeForCurrentLifecycle).createScope(KoinScopeComponentKt.getScopeId($this$createScopeForCurrentLifecycle), KoinScopeComponentKt.getScopeName($this$createScopeForCurrentLifecycle), $this$createScopeForCurrentLifecycle, scopeArchetype);
        scope.registerCallback(new ScopeCallback() { // from class: org.koin.androidx.scope.ComponentActivityExtKt.createScopeForCurrentLifecycle.1
            @Override // org.koin.core.scope.ScopeCallback
            public void onScopeClose(Scope scope2) {
                Intrinsics.checkNotNullParameter(scope2, "scope");
                LifecycleOwner lifecycleOwner = owner;
                Intrinsics.checkNotNull(lifecycleOwner, "null cannot be cast to non-null type org.koin.android.scope.AndroidScopeComponent");
                ((AndroidScopeComponent) lifecycleOwner).onCloseScope();
            }
        });
        registerScopeForLifecycle(owner, scope);
        return scope;
    }

    public static final void registerScopeForLifecycle(LifecycleOwner $this$registerScopeForLifecycle, final Scope scope) {
        Intrinsics.checkNotNullParameter($this$registerScopeForLifecycle, "<this>");
        Intrinsics.checkNotNullParameter(scope, "scope");
        $this$registerScopeForLifecycle.getLifecycleRegistry().addObserver(new DefaultLifecycleObserver() { // from class: org.koin.androidx.scope.ComponentActivityExtKt.registerScopeForLifecycle.1
            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public /* bridge */ void onCreate(LifecycleOwner owner) {
                super.onCreate(owner);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public /* bridge */ void onPause(LifecycleOwner owner) {
                super.onPause(owner);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public /* bridge */ void onResume(LifecycleOwner owner) {
                super.onResume(owner);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public /* bridge */ void onStart(LifecycleOwner owner) {
                super.onStart(owner);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public /* bridge */ void onStop(LifecycleOwner owner) {
                super.onStop(owner);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public void onDestroy(LifecycleOwner owner) {
                Intrinsics.checkNotNullParameter(owner, "owner");
                scope.close();
                super.onDestroy(owner);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Scope createActivityRetainedScope(final ComponentActivity $this$createActivityRetainedScope) {
        Intrinsics.checkNotNullParameter($this$createActivityRetainedScope, "<this>");
        if (!($this$createActivityRetainedScope instanceof AndroidScopeComponent)) {
            throw new IllegalStateException("Activity should implement AndroidScopeComponent".toString());
        }
        final Function0 extrasProducer$iv = null;
        ScopeHandlerViewModel scopeViewModel = (ScopeHandlerViewModel) new ViewModelLazy(Reflection.getOrCreateKotlinClass(ScopeHandlerViewModel.class), new Function0<ViewModelStore>() { // from class: org.koin.androidx.scope.ComponentActivityExtKt$createActivityRetainedScope$$inlined$viewModels$default$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                return $this$createActivityRetainedScope.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: org.koin.androidx.scope.ComponentActivityExtKt$createActivityRetainedScope$$inlined$viewModels$default$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                return $this$createActivityRetainedScope.getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: org.koin.androidx.scope.ComponentActivityExtKt$createActivityRetainedScope$$inlined$viewModels$default$3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final CreationExtras invoke() {
                CreationExtras creationExtras;
                Function0 function0 = extrasProducer$iv;
                return (function0 == null || (creationExtras = (CreationExtras) function0.invoke()) == null) ? $this$createActivityRetainedScope.getDefaultViewModelCreationExtras() : creationExtras;
            }
        }).getValue();
        if (scopeViewModel.getScope() == null) {
            scopeViewModel.setScope(Koin.createScope$default(ComponentCallbackExtKt.getKoin($this$createActivityRetainedScope), KoinScopeComponentKt.getScopeId($this$createActivityRetainedScope), KoinScopeComponentKt.getScopeName($this$createActivityRetainedScope), null, AndroidScopeArchetypesKt.getActivityRetainedScopeArchetype(), 4, null));
        }
        Scope scope = scopeViewModel.getScope();
        Intrinsics.checkNotNull(scope);
        return scope;
    }
}
