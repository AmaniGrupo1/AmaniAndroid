package org.koin.androidx.scope.dsl;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.koin.androidx.scope.AndroidScopeArchetypesKt;
import org.koin.core.module.Module;
import org.koin.dsl.ScopeDSL;

/* JADX INFO: compiled from: AndroidScopeArchetypesDSL.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a#\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0017\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\u0002\b\u0006\u001a#\u0010\u0007\u001a\u00020\u0001*\u00020\u00022\u0017\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\u0002\b\u0006\u001a#\u0010\b\u001a\u00020\u0001*\u00020\u00022\u0017\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\u0002\b\u0006¨\u0006\t"}, d2 = {"activityScope", "", "Lorg/koin/core/module/Module;", "scopeSet", "Lkotlin/Function1;", "Lorg/koin/dsl/ScopeDSL;", "Lkotlin/ExtensionFunctionType;", "activityRetainedScope", "fragmentScope", "koin-android_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class AndroidScopeArchetypesDSLKt {
    public static final void activityScope(Module $this$activityScope, Function1<? super ScopeDSL, Unit> scopeSet) {
        Intrinsics.checkNotNullParameter($this$activityScope, "<this>");
        Intrinsics.checkNotNullParameter(scopeSet, "scopeSet");
        scopeSet.invoke(new ScopeDSL(AndroidScopeArchetypesKt.getActivityScopeArchetype(), $this$activityScope));
    }

    public static final void activityRetainedScope(Module $this$activityRetainedScope, Function1<? super ScopeDSL, Unit> scopeSet) {
        Intrinsics.checkNotNullParameter($this$activityRetainedScope, "<this>");
        Intrinsics.checkNotNullParameter(scopeSet, "scopeSet");
        scopeSet.invoke(new ScopeDSL(AndroidScopeArchetypesKt.getActivityRetainedScopeArchetype(), $this$activityRetainedScope));
    }

    public static final void fragmentScope(Module $this$fragmentScope, Function1<? super ScopeDSL, Unit> scopeSet) {
        Intrinsics.checkNotNullParameter($this$fragmentScope, "<this>");
        Intrinsics.checkNotNullParameter(scopeSet, "scopeSet");
        scopeSet.invoke(new ScopeDSL(AndroidScopeArchetypesKt.getFragmentScopeArchetype(), $this$fragmentScope));
    }
}
