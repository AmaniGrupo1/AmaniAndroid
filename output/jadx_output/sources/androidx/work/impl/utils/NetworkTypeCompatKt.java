package androidx.work.impl.utils;

import android.net.NetworkRequest;
import android.os.Build;
import androidx.work.NetworkType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: NetworkTypeCompat.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0007¨\u0006\u0003"}, d2 = {"toNetworkRequest", "Landroid/net/NetworkRequest;", "Landroidx/work/NetworkType;", "work-runtime_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class NetworkTypeCompatKt {

    /* JADX INFO: compiled from: NetworkTypeCompat.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[NetworkType.values().length];
            try {
                iArr[NetworkType.METERED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[NetworkType.UNMETERED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[NetworkType.NOT_ROAMING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final NetworkRequest toNetworkRequest(NetworkType $this$toNetworkRequest) {
        NetworkRequest.Builder builderAddTransportType;
        Intrinsics.checkNotNullParameter($this$toNetworkRequest, "<this>");
        if ($this$toNetworkRequest == NetworkType.NOT_REQUIRED) {
            return null;
        }
        NetworkRequest.Builder networkRequestBuilder = new NetworkRequest.Builder().addCapability(12).addCapability(16).removeCapability(15).removeCapability(13);
        if (Build.VERSION.SDK_INT >= 30 && $this$toNetworkRequest == NetworkType.TEMPORARILY_UNMETERED) {
            return networkRequestBuilder.addCapability(25).build();
        }
        switch (WhenMappings.$EnumSwitchMapping$0[$this$toNetworkRequest.ordinal()]) {
            case 1:
                builderAddTransportType = networkRequestBuilder.addTransportType(0);
                break;
            case 2:
                builderAddTransportType = networkRequestBuilder.addCapability(11);
                break;
            case 3:
                builderAddTransportType = networkRequestBuilder.addCapability(18);
                break;
            default:
                builderAddTransportType = networkRequestBuilder;
                break;
        }
        return builderAddTransportType.build();
    }
}
