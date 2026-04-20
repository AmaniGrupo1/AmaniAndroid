package org.koin.androidx.scope;

import androidx.core.view.KeyEventDispatcher;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.android.scope.AndroidScopeComponent;
import org.koin.core.component.KoinScopeComponentKt;
import org.koin.core.scope.Scope;

/* JADX INFO: compiled from: FragmentExt.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u001a\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00010\u0006*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u001a\f\u0010\u0007\u001a\u0004\u0018\u00010\u0001*\u00020\u0002\u001a\u001e\u0010\f\u001a\u0002H\r\"\n\b\u0000\u0010\r\u0018\u0001*\u00020\t*\u00020\u0002H\u0086\b¢\u0006\u0002\u0010\u000b\"\u0017\u0010\b\u001a\u0004\u0018\u00010\t*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"createFragmentScope", "Lorg/koin/core/scope/Scope;", "Landroidx/fragment/app/Fragment;", "useParentActivityScope", "", "fragmentScope", "Lkotlin/Lazy;", "getScopeOrNull", "scopeActivity", "Lorg/koin/androidx/scope/ScopeActivity;", "getScopeActivity", "(Landroidx/fragment/app/Fragment;)Lorg/koin/androidx/scope/ScopeActivity;", "requireScopeActivity", ExifInterface.GPS_DIRECTION_TRUE, "koin-android_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class FragmentExtKt {
    public static /* synthetic */ Scope createFragmentScope$default(Fragment fragment, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return createFragmentScope(fragment, z);
    }

    public static final Scope createFragmentScope(Fragment $this$createFragmentScope, boolean useParentActivityScope) {
        Intrinsics.checkNotNullParameter($this$createFragmentScope, "<this>");
        if (!($this$createFragmentScope instanceof AndroidScopeComponent)) {
            throw new IllegalStateException("Fragment should implement AndroidScopeComponent".toString());
        }
        Scope scope = ComponentCallbackExtKt.getKoin($this$createFragmentScope).getScopeOrNull(KoinScopeComponentKt.getScopeId($this$createFragmentScope));
        if (scope == null) {
            scope = ComponentActivityExtKt.createScopeForCurrentLifecycle($this$createFragmentScope, $this$createFragmentScope, AndroidScopeArchetypesKt.getFragmentScopeArchetype());
        }
        if (useParentActivityScope) {
            KeyEventDispatcher.Component activity = $this$createFragmentScope.getActivity();
            AndroidScopeComponent androidScopeComponent = activity instanceof AndroidScopeComponent ? (AndroidScopeComponent) activity : null;
            Scope activityScope = androidScopeComponent != null ? androidScopeComponent.getScope() : null;
            if (activityScope != null) {
                scope.getLogger().debug("Link to parent activity scope: '" + activityScope.getId() + '\'');
                scope.linkTo(activityScope);
            } else {
                scope.getLogger().debug("Fragment '" + $this$createFragmentScope + "' can't be linked to parent activity scope. No Parent Activity Scope found.");
            }
        }
        return scope;
    }

    public static final Lazy<Scope> fragmentScope(final Fragment $this$fragmentScope, final boolean useParentActivityScope) {
        Intrinsics.checkNotNullParameter($this$fragmentScope, "<this>");
        return LazyKt.lazy(new Function0() { // from class: org.koin.androidx.scope.FragmentExtKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return FragmentExtKt.createFragmentScope($this$fragmentScope, useParentActivityScope);
            }
        });
    }

    public static /* synthetic */ Lazy fragmentScope$default(Fragment fragment, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return fragmentScope(fragment, z);
    }

    public static final Scope getScopeOrNull(Fragment $this$getScopeOrNull) {
        Intrinsics.checkNotNullParameter($this$getScopeOrNull, "<this>");
        return ComponentCallbackExtKt.getKoin($this$getScopeOrNull).getScopeOrNull(KoinScopeComponentKt.getScopeId($this$getScopeOrNull));
    }

    public static final ScopeActivity getScopeActivity(Fragment $this$scopeActivity) {
        Intrinsics.checkNotNullParameter($this$scopeActivity, "<this>");
        FragmentActivity activity = $this$scopeActivity.getActivity();
        if (activity instanceof ScopeActivity) {
            return (ScopeActivity) activity;
        }
        return null;
    }

    public static final /* synthetic */ <T extends ScopeActivity> T requireScopeActivity(Fragment $this$requireScopeActivity) {
        Intrinsics.checkNotNullParameter($this$requireScopeActivity, "<this>");
        FragmentActivity activity = $this$requireScopeActivity.getActivity();
        Intrinsics.reifiedOperationMarker(2, ExifInterface.GPS_DIRECTION_TRUE);
        T t = (T) activity;
        if (t != null) {
            return t;
        }
        StringBuilder sbAppend = new StringBuilder().append("can't get ScopeActivity for class ");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        throw new IllegalStateException(sbAppend.append(Reflection.getOrCreateKotlinClass(ScopeActivity.class)).toString().toString());
    }
}
