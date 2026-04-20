package androidx.work.impl.utils;

import android.net.NetworkRequest;
import android.os.Build;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: NetworkRequestCompat.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\u0018\u0002\n\u0002\b\u0006\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028G¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\u0015\u0010\u0005\u001a\u00020\u0001*\u00020\u00028G¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0004\"\u000e\u0010\u0007\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"transportTypesCompat", "", "Landroid/net/NetworkRequest;", "getTransportTypesCompat", "(Landroid/net/NetworkRequest;)[I", "capabilitiesCompat", "getCapabilitiesCompat", "defaultCapabilities", "work-runtime_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class NetworkRequestCompatKt {
    private static final int[] defaultCapabilities = {13, 15, 14};

    public static final int[] getTransportTypesCompat(NetworkRequest $this$transportTypesCompat) {
        Intrinsics.checkNotNullParameter($this$transportTypesCompat, "<this>");
        if (Build.VERSION.SDK_INT >= 31) {
            return NetworkRequest31.INSTANCE.transportTypes($this$transportTypesCompat);
        }
        int[] $this$filter$iv = {2, 0, 3, 6, 10, 9, 8, 4, 1, 5};
        Collection destination$iv$iv = new ArrayList();
        for (int element$iv$iv : $this$filter$iv) {
            if (NetworkRequest28.INSTANCE.hasTransport$work_runtime_release($this$transportTypesCompat, element$iv$iv)) {
                destination$iv$iv.add(Integer.valueOf(element$iv$iv));
            }
        }
        return CollectionsKt.toIntArray((List) destination$iv$iv);
    }

    public static final int[] getCapabilitiesCompat(NetworkRequest $this$capabilitiesCompat) {
        Intrinsics.checkNotNullParameter($this$capabilitiesCompat, "<this>");
        if (Build.VERSION.SDK_INT >= 31) {
            return NetworkRequest31.INSTANCE.capabilities($this$capabilitiesCompat);
        }
        int[] $this$filter$iv = {17, 5, 2, 10, 29, 19, 3, 32, 7, 4, 12, 36, 23, 0, 33, 20, 11, 13, 18, 21, 15, 35, 34, 8, 1, 25, 14, 16, 6, 9};
        Collection destination$iv$iv = new ArrayList();
        for (int element$iv$iv : $this$filter$iv) {
            if (NetworkRequest28.INSTANCE.hasCapability$work_runtime_release($this$capabilitiesCompat, element$iv$iv)) {
                destination$iv$iv.add(Integer.valueOf(element$iv$iv));
            }
        }
        return CollectionsKt.toIntArray((List) destination$iv$iv);
    }
}
