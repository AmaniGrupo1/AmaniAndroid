package org.ies.tierno.applicationamani.presentation.navigation;

import androidx.navigation.NavController;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: NavExtensions.kt */
/* JADX INFO: loaded from: classes14.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"safePopBackStack", "", "Landroidx/navigation/NavController;", "app"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class NavExtensionsKt {
    public static final void safePopBackStack(NavController $this$safePopBackStack) {
        Intrinsics.checkNotNullParameter($this$safePopBackStack, "<this>");
        if ($this$safePopBackStack.getPreviousBackStackEntry() != null) {
            $this$safePopBackStack.popBackStack();
        }
    }
}
