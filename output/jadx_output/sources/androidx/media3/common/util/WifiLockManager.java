package androidx.media3.common.util;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.os.Looper;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes21.dex */
public final class WifiLockManager {
    private static final String TAG = "WifiLockManager";
    private static final int UNREACTIVE_WIFILOCK_HANDLER_RELEASE_DELAY_MS = 1000;
    private static final String WIFI_LOCK_TAG = "ExoPlayer:WifiLockManager";
    private boolean enabled;
    private final HandlerWrapper mainHandler;
    private boolean stayAwake;
    private final HandlerWrapper wifiLockHandler;
    private final WifiLockManagerInternal wifiLockManagerInternal;

    public WifiLockManager(Context context, Looper wifiLockLooper, Clock clock) {
        this.wifiLockManagerInternal = new WifiLockManagerInternal(context.getApplicationContext());
        this.wifiLockHandler = clock.createHandler(wifiLockLooper, null);
        this.mainHandler = clock.createHandler(Looper.getMainLooper(), null);
    }

    public void setEnabled(boolean enabled) {
        if (this.enabled == enabled) {
            return;
        }
        this.enabled = enabled;
        postUpdateWifiLock(enabled, this.stayAwake);
    }

    public void setStayAwake(boolean stayAwake) {
        if (this.stayAwake == stayAwake) {
            return;
        }
        this.stayAwake = stayAwake;
        if (this.enabled) {
            postUpdateWifiLock(true, stayAwake);
        }
    }

    private void postUpdateWifiLock(final boolean enabled, final boolean stayAwake) {
        if (shouldAcquireWifilock(enabled, stayAwake)) {
            this.wifiLockHandler.post(new Runnable() { // from class: androidx.media3.common.util.WifiLockManager$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m7846xfd5ac0b8(enabled, stayAwake);
                }
            });
            return;
        }
        final AtomicBoolean emergencyReleaseNeeded = new AtomicBoolean(true);
        this.mainHandler.postDelayed(new Runnable() { // from class: androidx.media3.common.util.WifiLockManager$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m7847x97fb8339(emergencyReleaseNeeded);
            }
        }, 1000L);
        this.wifiLockHandler.post(new Runnable() { // from class: androidx.media3.common.util.WifiLockManager$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m7848x329c45ba(emergencyReleaseNeeded, enabled, stayAwake);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$postUpdateWifiLock$0$androidx-media3-common-util-WifiLockManager, reason: not valid java name */
    /* synthetic */ void m7846xfd5ac0b8(boolean enabled, boolean stayAwake) {
        this.wifiLockManagerInternal.updateWifiLock(enabled, stayAwake);
    }

    /* JADX INFO: renamed from: lambda$postUpdateWifiLock$1$androidx-media3-common-util-WifiLockManager, reason: not valid java name */
    /* synthetic */ void m7847x97fb8339(AtomicBoolean emergencyReleaseNeeded) {
        this.wifiLockManagerInternal.forceReleaseWifiLock(emergencyReleaseNeeded);
    }

    /* JADX INFO: renamed from: lambda$postUpdateWifiLock$2$androidx-media3-common-util-WifiLockManager, reason: not valid java name */
    /* synthetic */ void m7848x329c45ba(AtomicBoolean emergencyReleaseNeeded, boolean enabled, boolean stayAwake) {
        emergencyReleaseNeeded.set(false);
        this.wifiLockManagerInternal.updateWifiLock(enabled, stayAwake);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean shouldAcquireWifilock(boolean enabled, boolean stayAwake) {
        return enabled && stayAwake;
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class WifiLockManagerInternal {
        private final Context applicationContext;
        private WifiManager.WifiLock wifiLock;

        public WifiLockManagerInternal(Context applicationContext) {
            this.applicationContext = applicationContext;
        }

        public void updateWifiLock(boolean enabled, boolean stayAwake) {
            if (enabled && this.wifiLock == null) {
                if (this.applicationContext.checkSelfPermission("android.permission.WAKE_LOCK") != 0) {
                    Log.w(WifiLockManager.TAG, "WAKE_LOCK permission not granted, can't acquire wake lock for playback");
                    return;
                }
                WifiManager wifiManager = (WifiManager) this.applicationContext.getApplicationContext().getSystemService("wifi");
                if (wifiManager == null) {
                    Log.w(WifiLockManager.TAG, "WifiManager is null, therefore not creating the WifiLock.");
                    return;
                } else {
                    this.wifiLock = wifiManager.createWifiLock(3, WifiLockManager.WIFI_LOCK_TAG);
                    this.wifiLock.setReferenceCounted(false);
                }
            }
            if (this.wifiLock != null) {
                boolean zShouldAcquireWifilock = WifiLockManager.shouldAcquireWifilock(enabled, stayAwake);
                WifiManager.WifiLock wifiLock = this.wifiLock;
                if (zShouldAcquireWifilock) {
                    wifiLock.acquire();
                } else {
                    wifiLock.release();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void forceReleaseWifiLock(final AtomicBoolean shouldForceRelease) {
            if (shouldForceRelease.get()) {
                new Thread(new Runnable() { // from class: androidx.media3.common.util.WifiLockManager$WifiLockManagerInternal$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m7849xd91cfc11(shouldForceRelease);
                    }
                }, WifiLockManager.WIFI_LOCK_TAG).start();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: forceReleaseWifiLockInternal, reason: merged with bridge method [inline-methods] */
        public synchronized void m7849xd91cfc11(AtomicBoolean shouldForceRelease) {
            if (shouldForceRelease.get() && this.wifiLock != null) {
                this.wifiLock.release();
            }
        }
    }
}
