package androidx.datastore.core.util;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DirectBootUtil.android.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0001H\u0001¨\u0006\u0002"}, d2 = {"requireDeviceProtectedStorageContext", "Landroid/content/Context;", "datastore-core"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class DirectBootUtil_androidKt {
    public static final Context requireDeviceProtectedStorageContext(Context $this$requireDeviceProtectedStorageContext) {
        Intrinsics.checkNotNullParameter($this$requireDeviceProtectedStorageContext, "<this>");
        if (!$this$requireDeviceProtectedStorageContext.isDeviceProtectedStorage()) {
            Context contextCreateDeviceProtectedStorageContext = $this$requireDeviceProtectedStorageContext.createDeviceProtectedStorageContext();
            Intrinsics.checkNotNull(contextCreateDeviceProtectedStorageContext);
            return contextCreateDeviceProtectedStorageContext;
        }
        return $this$requireDeviceProtectedStorageContext;
    }
}
