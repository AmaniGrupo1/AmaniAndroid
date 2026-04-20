package androidx.media3.common.util;

import android.content.Context;
import android.os.Looper;
import android.os.PowerManager;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes21.dex */
public final class WakeLockManager {
    private static final String TAG = "WakeLockManager";
    private static final int UNREACTIVE_WAKELOCK_HANDLER_RELEASE_DELAY_MS = 1000;
    private static final String WAKE_LOCK_TAG = "ExoPlayer:WakeLockManager";
    private boolean enabled;
    private final HandlerWrapper mainHandler;
    private boolean stayAwake;
    private final HandlerWrapper wakeLockHandler;
    private final WakeLockManagerInternal wakeLockManagerInternal;

    public WakeLockManager(Context context, Looper wakeLockLooper, Clock clock) {
        this.wakeLockManagerInternal = new WakeLockManagerInternal(context.getApplicationContext());
        this.wakeLockHandler = clock.createHandler(wakeLockLooper, null);
        this.mainHandler = clock.createHandler(Looper.getMainLooper(), null);
    }

    public void setEnabled(boolean enabled) {
        if (this.enabled == enabled) {
            return;
        }
        this.enabled = enabled;
        postUpdateWakeLock(enabled, this.stayAwake);
    }

    public void setStayAwake(boolean stayAwake) {
        if (this.stayAwake == stayAwake) {
            return;
        }
        this.stayAwake = stayAwake;
        if (this.enabled) {
            postUpdateWakeLock(true, stayAwake);
        }
    }

    private void postUpdateWakeLock(final boolean enabled, final boolean stayAwake) {
        if (shouldAcquireWakelock(enabled, stayAwake)) {
            this.wakeLockHandler.post(new Runnable() { // from class: androidx.media3.common.util.WakeLockManager$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m7842xe56dff98(enabled, stayAwake);
                }
            });
            return;
        }
        final AtomicBoolean emergencyReleaseNeeded = new AtomicBoolean(true);
        this.mainHandler.postDelayed(new Runnable() { // from class: androidx.media3.common.util.WakeLockManager$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m7843x800ec219(emergencyReleaseNeeded);
            }
        }, 1000L);
        this.wakeLockHandler.post(new Runnable() { // from class: androidx.media3.common.util.WakeLockManager$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m7844x1aaf849a(emergencyReleaseNeeded, enabled, stayAwake);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$postUpdateWakeLock$0$androidx-media3-common-util-WakeLockManager, reason: not valid java name */
    /* synthetic */ void m7842xe56dff98(boolean enabled, boolean stayAwake) {
        this.wakeLockManagerInternal.updateWakeLock(enabled, stayAwake);
    }

    /* JADX INFO: renamed from: lambda$postUpdateWakeLock$1$androidx-media3-common-util-WakeLockManager, reason: not valid java name */
    /* synthetic */ void m7843x800ec219(AtomicBoolean emergencyReleaseNeeded) {
        this.wakeLockManagerInternal.forceReleaseWakeLock(emergencyReleaseNeeded);
    }

    /* JADX INFO: renamed from: lambda$postUpdateWakeLock$2$androidx-media3-common-util-WakeLockManager, reason: not valid java name */
    /* synthetic */ void m7844x1aaf849a(AtomicBoolean emergencyReleaseNeeded, boolean enabled, boolean stayAwake) {
        emergencyReleaseNeeded.set(false);
        this.wakeLockManagerInternal.updateWakeLock(enabled, stayAwake);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean shouldAcquireWakelock(boolean enabled, boolean stayAwake) {
        return enabled && stayAwake;
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class WakeLockManagerInternal {
        private final Context applicationContext;
        private PowerManager.WakeLock wakeLock;

        public WakeLockManagerInternal(Context applicationContext) {
            this.applicationContext = applicationContext;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void updateWakeLock(boolean enabled, boolean stayAwake) {
            if (enabled) {
                if (this.wakeLock == null) {
                    if (this.applicationContext.checkSelfPermission("android.permission.WAKE_LOCK") != 0) {
                        Log.w(WakeLockManager.TAG, "WAKE_LOCK permission not granted, can't acquire wake lock for playback");
                        return;
                    }
                    PowerManager powerManager = (PowerManager) this.applicationContext.getSystemService("power");
                    if (powerManager == null) {
                        Log.w(WakeLockManager.TAG, "PowerManager is null, therefore not creating the WakeLock.");
                        return;
                    } else {
                        this.wakeLock = powerManager.newWakeLock(1, WakeLockManager.WAKE_LOCK_TAG);
                        this.wakeLock.setReferenceCounted(false);
                    }
                }
            }
            if (this.wakeLock == null) {
                return;
            }
            boolean zShouldAcquireWakelock = WakeLockManager.shouldAcquireWakelock(enabled, stayAwake);
            PowerManager.WakeLock wakeLock = this.wakeLock;
            if (zShouldAcquireWakelock) {
                wakeLock.acquire();
            } else {
                wakeLock.release();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void forceReleaseWakeLock(final AtomicBoolean shouldForceRelease) {
            if (shouldForceRelease.get()) {
                new Thread(new Runnable() { // from class: androidx.media3.common.util.WakeLockManager$WakeLockManagerInternal$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m7845x41613802(shouldForceRelease);
                    }
                }, WakeLockManager.WAKE_LOCK_TAG).start();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: forceReleaseWakeLockInternal, reason: merged with bridge method [inline-methods] */
        public synchronized void m7845x41613802(AtomicBoolean shouldForceRelease) {
            if (shouldForceRelease.get() && this.wakeLock != null) {
                this.wakeLock.release();
            }
        }
    }
}
