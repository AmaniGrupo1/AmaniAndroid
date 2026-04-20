package androidx.media3.common.audio;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Looper;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.HandlerWrapper;

/* JADX INFO: loaded from: classes21.dex */
public final class AudioBecomingNoisyManager {
    private final HandlerWrapper backgroundHandler;
    private final Context context;
    private boolean isEnabled;
    private final AudioBecomingNoisyReceiver receiver;

    public interface Listener {
        void onAudioBecomingNoisy();
    }

    public AudioBecomingNoisyManager(Context context, Looper backgroundLooper, Looper eventLooper, Listener listener, Clock clock) {
        this.context = context.getApplicationContext();
        this.backgroundHandler = clock.createHandler(backgroundLooper, null);
        this.receiver = new AudioBecomingNoisyReceiver(clock.createHandler(eventLooper, null), listener);
    }

    public void setEnabled(boolean enabled) {
        if (enabled == this.isEnabled) {
            return;
        }
        HandlerWrapper handlerWrapper = this.backgroundHandler;
        if (enabled) {
            handlerWrapper.post(new Runnable() { // from class: androidx.media3.common.audio.AudioBecomingNoisyManager$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m7830xc439ca36();
                }
            });
            this.isEnabled = true;
        } else {
            handlerWrapper.post(new Runnable() { // from class: androidx.media3.common.audio.AudioBecomingNoisyManager$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m7831xc5701d15();
                }
            });
            this.isEnabled = false;
        }
    }

    /* JADX INFO: renamed from: lambda$setEnabled$0$androidx-media3-common-audio-AudioBecomingNoisyManager, reason: not valid java name */
    /* synthetic */ void m7830xc439ca36() {
        this.context.registerReceiver(this.receiver, new IntentFilter("android.media.AUDIO_BECOMING_NOISY"));
    }

    /* JADX INFO: renamed from: lambda$setEnabled$1$androidx-media3-common-audio-AudioBecomingNoisyManager, reason: not valid java name */
    /* synthetic */ void m7831xc5701d15() {
        this.context.unregisterReceiver(this.receiver);
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class AudioBecomingNoisyReceiver extends BroadcastReceiver {
        private final HandlerWrapper eventHandler;
        private final Listener listener;

        private AudioBecomingNoisyReceiver(HandlerWrapper eventHandler, Listener listener) {
            this.eventHandler = eventHandler;
            this.listener = listener;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
                this.eventHandler.post(new Runnable() { // from class: androidx.media3.common.audio.AudioBecomingNoisyManager$AudioBecomingNoisyReceiver$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.callListenerIfEnabled();
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void callListenerIfEnabled() {
            if (AudioBecomingNoisyManager.this.isEnabled) {
                this.listener.onAudioBecomingNoisy();
            }
        }
    }
}
