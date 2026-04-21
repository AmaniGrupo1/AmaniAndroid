package androidx.media3.common.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.telephony.TelephonyCallback;
import android.telephony.TelephonyDisplayInfo;
import android.telephony.TelephonyManager;
import androidx.autofill.HintConstants;
import com.google.common.base.Preconditions;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes21.dex */
public final class NetworkTypeObserver {
    private static NetworkTypeObserver staticInstance;
    private boolean isInitialized;
    private final Executor backgroundExecutor = BackgroundExecutor.get();
    private final CopyOnWriteArrayList<ListenerHolder> listeners = new CopyOnWriteArrayList<>();
    private final Object lock = new Object();
    private int networkType = 0;

    public interface Listener {
        void onNetworkTypeChanged(int i);
    }

    public static synchronized NetworkTypeObserver getInstance(Context context) {
        if (staticInstance == null) {
            staticInstance = new NetworkTypeObserver(context);
        }
        return staticInstance;
    }

    public static synchronized void resetForTests() {
        staticInstance = null;
    }

    private NetworkTypeObserver(final Context context) {
        this.backgroundExecutor.execute(new Runnable() { // from class: androidx.media3.common.util.NetworkTypeObserver$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m7839lambda$new$0$androidxmedia3commonutilNetworkTypeObserver(context);
            }
        });
    }

    @Deprecated
    public void register(Listener listener) {
        final Handler handler = new Handler(Looper.getMainLooper());
        register(listener, new Executor() { // from class: androidx.media3.common.util.NetworkTypeObserver$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                handler.post(runnable);
            }
        });
    }

    public void register(Listener listener, Executor executor) {
        boolean isInitialized;
        removeClearedReferences();
        ListenerHolder listenerHolder = new ListenerHolder(listener, executor);
        synchronized (this.lock) {
            this.listeners.add(listenerHolder);
            isInitialized = this.isInitialized;
        }
        if (isInitialized) {
            listenerHolder.callOnNetworkTypeChanged();
        }
    }

    public int getNetworkType() {
        int i;
        synchronized (this.lock) {
            i = this.networkType;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: init, reason: merged with bridge method [inline-methods] */
    public void m7839lambda$new$0$androidxmedia3commonutilNetworkTypeObserver(Context context) {
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        context.registerReceiver(new Receiver(), filter);
    }

    private void removeClearedReferences() {
        for (ListenerHolder listener : this.listeners) {
            if (listener.canBeRemoved()) {
                this.listeners.remove(listener);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleConnectivityActionBroadcast(Context context) {
        int networkType = getNetworkTypeFromConnectivityManager(context);
        if (Build.VERSION.SDK_INT >= 31 && networkType == 5) {
            Api31.disambiguate4gAnd5gNsa(context, this);
        } else {
            updateNetworkType(networkType);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateNetworkType(int networkType) {
        removeClearedReferences();
        synchronized (this.lock) {
            if (this.isInitialized && this.networkType == networkType) {
                return;
            }
            this.isInitialized = true;
            this.networkType = networkType;
            Iterator<ListenerHolder> currentListeners = this.listeners.iterator();
            while (currentListeners.hasNext()) {
                currentListeners.next().callOnNetworkTypeChanged();
            }
        }
    }

    private static int getNetworkTypeFromConnectivityManager(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return 0;
        }
        try {
            NetworkInfo networkInfo = connectivityManager.getActiveNetworkInfo();
            if (networkInfo == null || !networkInfo.isConnected()) {
                return 1;
            }
            switch (networkInfo.getType()) {
                case 0:
                case 4:
                case 5:
                    return getMobileNetworkType(networkInfo);
                case 1:
                    return 2;
                case 2:
                case 3:
                case 7:
                case 8:
                default:
                    return 8;
                case 6:
                    return 5;
                case 9:
                    return 7;
            }
        } catch (SecurityException e) {
            return 0;
        }
    }

    private static int getMobileNetworkType(NetworkInfo networkInfo) {
        switch (networkInfo.getSubtype()) {
            case 1:
            case 2:
                return 3;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 14:
            case 15:
            case 17:
                return 4;
            case 13:
                return 5;
            case 16:
            case 19:
            default:
                return 6;
            case 18:
                return 2;
            case 20:
                return Build.VERSION.SDK_INT >= 29 ? 9 : 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class Receiver extends BroadcastReceiver {
        private Receiver() {
        }

        /* JADX INFO: renamed from: lambda$onReceive$0$androidx-media3-common-util-NetworkTypeObserver$Receiver, reason: not valid java name */
        /* synthetic */ void m7841x90e623c9(Context context) {
            NetworkTypeObserver.this.handleConnectivityActionBroadcast(context);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(final Context context, Intent intent) {
            NetworkTypeObserver.this.backgroundExecutor.execute(new Runnable() { // from class: androidx.media3.common.util.NetworkTypeObserver$Receiver$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m7841x90e623c9(context);
                }
            });
        }
    }

    private static final class Api31 {
        private Api31() {
        }

        public static void disambiguate4gAnd5gNsa(Context context, NetworkTypeObserver instance) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) Preconditions.checkNotNull((TelephonyManager) context.getSystemService(HintConstants.AUTOFILL_HINT_PHONE));
                DisplayInfoCallback callback = new DisplayInfoCallback(instance);
                telephonyManager.registerTelephonyCallback(instance.backgroundExecutor, callback);
                telephonyManager.unregisterTelephonyCallback(callback);
            } catch (RuntimeException e) {
                instance.updateNetworkType(5);
            }
        }

        private static final class DisplayInfoCallback extends TelephonyCallback implements TelephonyCallback.DisplayInfoListener {
            private final NetworkTypeObserver instance;

            public DisplayInfoCallback(NetworkTypeObserver instance) {
                this.instance = instance;
            }

            @Override // android.telephony.TelephonyCallback.DisplayInfoListener
            public void onDisplayInfoChanged(TelephonyDisplayInfo telephonyDisplayInfo) {
                int overrideNetworkType = telephonyDisplayInfo.getOverrideNetworkType();
                boolean is5gNsa = overrideNetworkType == 3 || overrideNetworkType == 4 || overrideNetworkType == 5;
                this.instance.updateNetworkType(is5gNsa ? 10 : 5);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class ListenerHolder {
        private final Executor executor;
        private final WeakReference<Listener> listener;

        public ListenerHolder(Listener listener, Executor executor) {
            this.listener = new WeakReference<>(listener);
            this.executor = executor;
        }

        public boolean canBeRemoved() {
            return this.listener.get() == null;
        }

        public void callOnNetworkTypeChanged() {
            this.executor.execute(new Runnable() { // from class: androidx.media3.common.util.NetworkTypeObserver$ListenerHolder$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m7840x7c19281b();
                }
            });
        }

        /* JADX INFO: renamed from: lambda$callOnNetworkTypeChanged$0$androidx-media3-common-util-NetworkTypeObserver$ListenerHolder, reason: not valid java name */
        /* synthetic */ void m7840x7c19281b() {
            Listener listener = this.listener.get();
            if (listener != null) {
                listener.onNetworkTypeChanged(NetworkTypeObserver.this.getNetworkType());
            }
        }
    }
}
