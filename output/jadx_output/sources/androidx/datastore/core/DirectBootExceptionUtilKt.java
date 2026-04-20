package androidx.datastore.core;

import android.os.Parcel;
import android.os.Process;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Method;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DirectBootExceptionUtil.android.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\u001a\"\u0010\u0000\u001a\u00060\u0001j\u0002`\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0010\u0005\u001a\u00060\u0001j\u0002`\u0002H\u0007\u001a\f\u0010\u0006\u001a\u00020\u0007*\u00020\bH\u0000\u001a\b\u0010\n\u001a\u00020\u000bH\u0002\"\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"wrapExceptionIfDueToDirectBoot", "Ljava/lang/Exception;", "Lkotlin/Exception;", "parentDirPath", "", "exception", "isDeviceUnlocked", "", "", "TAG", "primaryUserId", "", "datastore-core"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class DirectBootExceptionUtilKt {
    private static final String TAG = "DirectBootExceptionUtil";

    public static final Exception wrapExceptionIfDueToDirectBoot(String parentDirPath, Exception exception) {
        Intrinsics.checkNotNullParameter(exception, "exception");
        if (isDeviceUnlocked(exception) || parentDirPath == null) {
            return exception;
        }
        File siblingTestFile = new File(parentDirPath, "siblingTestFile.txt");
        if (siblingTestFile.exists()) {
            siblingTestFile.delete();
        }
        try {
            siblingTestFile.createNewFile();
            return exception;
        } catch (IOException e) {
            return new DirectBootUsageException(exception);
        } finally {
            siblingTestFile.delete();
        }
    }

    public static final boolean isDeviceUnlocked(Throwable $this$isDeviceUnlocked) {
        Intrinsics.checkNotNullParameter($this$isDeviceUnlocked, "<this>");
        try {
            Method getMethod = Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class);
            Intrinsics.checkNotNullExpressionValue(getMethod, "getMethod(...)");
            int userId = primaryUserId();
            Object objInvoke = getMethod.invoke(null, "sys.user." + userId + ".ce_available", "false");
            Intrinsics.checkNotNull(objInvoke, "null cannot be cast to non-null type kotlin.String");
            boolean isCeAvailable = Intrinsics.areEqual((String) objInvoke, "true");
            return isCeAvailable;
        } catch (Throwable t) {
            ExceptionsKt.addSuppressed($this$isDeviceUnlocked, t);
            return false;
        }
    }

    private static final int primaryUserId() {
        try {
            Parcel parcel = Parcel.obtain();
            Intrinsics.checkNotNullExpressionValue(parcel, "obtain(...)");
            Process.myUserHandle().writeToParcel(parcel, 0);
            parcel.setDataPosition(0);
            return parcel.readInt();
        } catch (Throwable th) {
            Log.d(TAG, "Error when reading current user id. Selected default user id `0`.");
            return 0;
        }
    }
}
