package androidx.media3.common.util;

import android.os.Looper;
import android.text.TextUtils;
import com.google.common.base.Preconditions;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.dataflow.qual.Pure;

/* JADX INFO: loaded from: classes21.dex */
public final class Assertions {
    private Assertions() {
    }

    @Deprecated
    @Pure
    public static void checkArgument(boolean expression) {
        Preconditions.checkArgument(expression);
    }

    @Deprecated
    @Pure
    public static void checkArgument(boolean expression, Object errorMessage) {
        Preconditions.checkArgument(expression, errorMessage);
    }

    @Deprecated
    @Pure
    public static int checkIndex(int index, int start, int limit) {
        if (index < start || index >= limit) {
            throw new IndexOutOfBoundsException();
        }
        return index;
    }

    @Deprecated
    @Pure
    public static void checkState(boolean expression) {
        Preconditions.checkState(expression);
    }

    @Deprecated
    @Pure
    public static void checkState(boolean expression, Object errorMessage) {
        Preconditions.checkState(expression, errorMessage);
    }

    @EnsuresNonNull({"#1"})
    @Deprecated
    @Pure
    public static <T> T checkStateNotNull(T t) {
        return (T) Preconditions.checkNotNull(t);
    }

    @EnsuresNonNull({"#1"})
    @Deprecated
    @Pure
    public static <T> T checkStateNotNull(T t, Object obj) {
        return (T) Preconditions.checkNotNull(t, obj);
    }

    @EnsuresNonNull({"#1"})
    @Deprecated
    @Pure
    public static <T> T checkNotNull(T t) {
        return (T) Preconditions.checkNotNull(t);
    }

    @EnsuresNonNull({"#1"})
    @Deprecated
    @Pure
    public static <T> T checkNotNull(T t, Object obj) {
        return (T) Preconditions.checkNotNull(t, obj);
    }

    @EnsuresNonNull({"#1"})
    @Deprecated
    @Pure
    public static String checkNotEmpty(String string) {
        Preconditions.checkArgument(!TextUtils.isEmpty(string));
        return string;
    }

    @EnsuresNonNull({"#1"})
    @Deprecated
    @Pure
    public static String checkNotEmpty(String string, Object errorMessage) {
        Preconditions.checkArgument(!TextUtils.isEmpty(string), errorMessage);
        return string;
    }

    @Deprecated
    @Pure
    public static void checkMainThread() {
        Preconditions.checkState(Looper.myLooper() == Looper.getMainLooper(), "Not in application's main thread");
    }
}
