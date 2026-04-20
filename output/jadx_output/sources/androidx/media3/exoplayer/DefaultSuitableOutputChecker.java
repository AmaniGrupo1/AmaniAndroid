package androidx.media3.exoplayer;

import android.content.Context;
import android.media.AudioDeviceCallback;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.media.MediaRoute2Info;
import android.media.MediaRouter2;
import android.media.RouteDiscoveryPreference;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.BackgroundThreadStateHandler;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.SuitableOutputChecker;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes21.dex */
final class DefaultSuitableOutputChecker implements SuitableOutputChecker {
    private final SuitableOutputChecker impl;

    public DefaultSuitableOutputChecker() {
        if (Build.VERSION.SDK_INT >= 35) {
            this.impl = new ImplApi35();
        } else {
            this.impl = new ImplApi23();
        }
    }

    @Override // androidx.media3.exoplayer.SuitableOutputChecker
    public void enable(SuitableOutputChecker.Callback callback, Context context, Looper callbackLooper, Looper backgroundLooper, Clock clock) {
        this.impl.enable(callback, context, callbackLooper, backgroundLooper, clock);
    }

    @Override // androidx.media3.exoplayer.SuitableOutputChecker
    public void disable() {
        this.impl.disable();
    }

    @Override // androidx.media3.exoplayer.SuitableOutputChecker
    public boolean isSelectedOutputSuitableForPlayback() {
        return this.impl.isSelectedOutputSuitableForPlayback();
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class ImplApi35 implements SuitableOutputChecker {
        private static final RouteDiscoveryPreference EMPTY_DISCOVERY_PREFERENCE = new RouteDiscoveryPreference.Builder(ImmutableList.of(), false).build();
        private MediaRouter2.ControllerCallback controllerCallback;
        private BackgroundThreadStateHandler<Boolean> isSuitableForPlaybackState;
        private MediaRouter2.RouteCallback routeCallback;
        private MediaRouter2 router;

        private ImplApi35() {
        }

        @Override // androidx.media3.exoplayer.SuitableOutputChecker
        public void enable(final SuitableOutputChecker.Callback callback, final Context context, Looper callbackLooper, Looper backgroundLooper, Clock clock) {
            this.isSuitableForPlaybackState = new BackgroundThreadStateHandler<>(true, backgroundLooper, callbackLooper, clock, new BackgroundThreadStateHandler.StateChangeListener() { // from class: androidx.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda2
                @Override // androidx.media3.common.util.BackgroundThreadStateHandler.StateChangeListener
                public final void onStateChanged(Object obj, Object obj2) {
                    callback.onSelectedOutputSuitabilityChanged(((Boolean) obj2).booleanValue());
                }
            });
            this.isSuitableForPlaybackState.runInBackground(new Runnable() { // from class: androidx.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m7856x2808a185(context);
                }
            });
        }

        /* JADX INFO: renamed from: lambda$enable$1$androidx-media3-exoplayer-DefaultSuitableOutputChecker$ImplApi35, reason: not valid java name */
        /* synthetic */ void m7856x2808a185(Context context) {
            Preconditions.checkNotNull(this.isSuitableForPlaybackState);
            this.router = MediaRouter2.getInstance(context);
            this.routeCallback = new MediaRouter2.RouteCallback() { // from class: androidx.media3.exoplayer.DefaultSuitableOutputChecker.ImplApi35.1
            };
            final BackgroundThreadStateHandler<Boolean> backgroundThreadStateHandler = this.isSuitableForPlaybackState;
            Objects.requireNonNull(backgroundThreadStateHandler);
            Executor backgroundExecutor = new Executor() { // from class: androidx.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda0
                @Override // java.util.concurrent.Executor
                public final void execute(Runnable runnable) {
                    backgroundThreadStateHandler.runInBackground(runnable);
                }
            };
            this.router.registerRouteCallback(backgroundExecutor, this.routeCallback, EMPTY_DISCOVERY_PREFERENCE);
            this.controllerCallback = new MediaRouter2.ControllerCallback() { // from class: androidx.media3.exoplayer.DefaultSuitableOutputChecker.ImplApi35.2
                @Override // android.media.MediaRouter2.ControllerCallback
                public void onControllerUpdated(MediaRouter2.RoutingController controller) {
                    ImplApi35.this.isSuitableForPlaybackState.setStateInBackground(Boolean.valueOf(ImplApi35.isSelectedOutputSuitableForPlayback(ImplApi35.this.router)));
                }
            };
            this.router.registerControllerCallback(backgroundExecutor, this.controllerCallback);
            this.isSuitableForPlaybackState.setStateInBackground(Boolean.valueOf(isSelectedOutputSuitableForPlayback(this.router)));
        }

        @Override // androidx.media3.exoplayer.SuitableOutputChecker
        public void disable() {
            ((BackgroundThreadStateHandler) Preconditions.checkNotNull(this.isSuitableForPlaybackState)).runInBackground(new Runnable() { // from class: androidx.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m7855x2d89dbb9();
                }
            });
        }

        /* JADX INFO: renamed from: lambda$disable$2$androidx-media3-exoplayer-DefaultSuitableOutputChecker$ImplApi35, reason: not valid java name */
        /* synthetic */ void m7855x2d89dbb9() {
            ((MediaRouter2) Preconditions.checkNotNull(this.router)).unregisterControllerCallback((MediaRouter2.ControllerCallback) Preconditions.checkNotNull(this.controllerCallback));
            this.controllerCallback = null;
            this.router.unregisterRouteCallback((MediaRouter2.RouteCallback) Preconditions.checkNotNull(this.routeCallback));
        }

        @Override // androidx.media3.exoplayer.SuitableOutputChecker
        public boolean isSelectedOutputSuitableForPlayback() {
            if (this.isSuitableForPlaybackState == null) {
                return true;
            }
            return this.isSuitableForPlaybackState.get().booleanValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean isSelectedOutputSuitableForPlayback(MediaRouter2 router) {
            int transferReason = ((MediaRouter2) Preconditions.checkNotNull(router)).getSystemController().getRoutingSessionInfo().getTransferReason();
            boolean wasTransferInitiatedBySelf = router.getSystemController().wasTransferInitiatedBySelf();
            for (MediaRoute2Info routeInfo : router.getSystemController().getSelectedRoutes()) {
                if (isRouteSuitableForMediaPlayback(routeInfo, transferReason, wasTransferInitiatedBySelf)) {
                    return true;
                }
            }
            return false;
        }

        private static boolean isRouteSuitableForMediaPlayback(MediaRoute2Info routeInfo, int transferReason, boolean wasTransferInitiatedBySelf) {
            int suitabilityStatus = routeInfo.getSuitabilityStatus();
            return suitabilityStatus == 1 ? (transferReason == 1 || transferReason == 2) && wasTransferInitiatedBySelf : suitabilityStatus == 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class ImplApi23 implements SuitableOutputChecker {
        private AudioDeviceCallback audioDeviceCallback;
        private AudioManager audioManager;
        private BackgroundThreadStateHandler<Boolean> isSuitableForPlaybackState;

        private ImplApi23() {
        }

        @Override // androidx.media3.exoplayer.SuitableOutputChecker
        public void enable(final SuitableOutputChecker.Callback callback, final Context context, Looper callbackLooper, Looper backgroundLooper, Clock clock) {
            this.isSuitableForPlaybackState = new BackgroundThreadStateHandler<>(true, backgroundLooper, callbackLooper, clock, new BackgroundThreadStateHandler.StateChangeListener() { // from class: androidx.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi23$$ExternalSyntheticLambda1
                @Override // androidx.media3.common.util.BackgroundThreadStateHandler.StateChangeListener
                public final void onStateChanged(Object obj, Object obj2) {
                    callback.onSelectedOutputSuitabilityChanged(((Boolean) obj2).booleanValue());
                }
            });
            this.isSuitableForPlaybackState.runInBackground(new Runnable() { // from class: androidx.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi23$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m7853x2808a164(context);
                }
            });
        }

        /* JADX INFO: renamed from: lambda$enable$1$androidx-media3-exoplayer-DefaultSuitableOutputChecker$ImplApi23, reason: not valid java name */
        /* synthetic */ void m7853x2808a164(Context context) {
            AudioManager audioManager;
            Preconditions.checkNotNull(this.isSuitableForPlaybackState);
            if (!Util.isWear(context) || (audioManager = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO)) == null) {
                return;
            }
            this.audioManager = audioManager;
            this.audioDeviceCallback = new AudioDeviceCallback() { // from class: androidx.media3.exoplayer.DefaultSuitableOutputChecker.ImplApi23.1
                @Override // android.media.AudioDeviceCallback
                public void onAudioDevicesAdded(AudioDeviceInfo[] addedDevices) {
                    ImplApi23.this.isSuitableForPlaybackState.setStateInBackground(Boolean.valueOf(ImplApi23.this.hasSupportedAudioOutput()));
                }

                @Override // android.media.AudioDeviceCallback
                public void onAudioDevicesRemoved(AudioDeviceInfo[] removedDevices) {
                    ImplApi23.this.isSuitableForPlaybackState.setStateInBackground(Boolean.valueOf(ImplApi23.this.hasSupportedAudioOutput()));
                }
            };
            audioManager.registerAudioDeviceCallback(this.audioDeviceCallback, new Handler((Looper) Preconditions.checkNotNull(Looper.myLooper())));
            this.isSuitableForPlaybackState.setStateInBackground(Boolean.valueOf(hasSupportedAudioOutput()));
        }

        @Override // androidx.media3.exoplayer.SuitableOutputChecker
        public void disable() {
            ((BackgroundThreadStateHandler) Preconditions.checkNotNull(this.isSuitableForPlaybackState)).runInBackground(new Runnable() { // from class: androidx.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi23$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m7852x2d89db98();
                }
            });
        }

        /* JADX INFO: renamed from: lambda$disable$2$androidx-media3-exoplayer-DefaultSuitableOutputChecker$ImplApi23, reason: not valid java name */
        /* synthetic */ void m7852x2d89db98() {
            if (this.audioManager != null) {
                this.audioManager.unregisterAudioDeviceCallback((AudioDeviceCallback) Preconditions.checkNotNull(this.audioDeviceCallback));
            }
        }

        @Override // androidx.media3.exoplayer.SuitableOutputChecker
        public boolean isSelectedOutputSuitableForPlayback() {
            if (this.isSuitableForPlaybackState == null) {
                return true;
            }
            return this.isSuitableForPlaybackState.get().booleanValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean hasSupportedAudioOutput() {
            AudioDeviceInfo[] audioDeviceInfos = ((AudioManager) Preconditions.checkNotNull(this.audioManager)).getDevices(2);
            for (AudioDeviceInfo device : audioDeviceInfos) {
                if (device.getType() == 8 || device.getType() == 5 || device.getType() == 6 || device.getType() == 11 || device.getType() == 4 || device.getType() == 3) {
                    return true;
                }
                if (Build.VERSION.SDK_INT >= 26 && device.getType() == 22) {
                    return true;
                }
                if (Build.VERSION.SDK_INT >= 28 && device.getType() == 23) {
                    return true;
                }
                if (Build.VERSION.SDK_INT >= 31 && (device.getType() == 26 || device.getType() == 27)) {
                    return true;
                }
                if (Build.VERSION.SDK_INT >= 33 && device.getType() == 30) {
                    return true;
                }
            }
            return false;
        }
    }
}
