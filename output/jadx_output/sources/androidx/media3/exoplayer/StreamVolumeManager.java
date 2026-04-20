package androidx.media3.exoplayer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Looper;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.audio.AudioManagerCompat;
import androidx.media3.common.util.BackgroundThreadStateHandler;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.Log;
import androidx.media3.exoplayer.StreamVolumeManager;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes21.dex */
final class StreamVolumeManager {
    private static final String TAG = "StreamVolumeManager";
    private static final String VOLUME_CHANGED_ACTION = "android.media.VOLUME_CHANGED_ACTION";
    private final Context applicationContext;
    private AudioManager audioManager;
    private final Listener listener;
    private VolumeChangeReceiver receiver;
    private final BackgroundThreadStateHandler<StreamVolumeState> stateHandler;
    private int volumeBeforeMute;

    public interface Listener {
        void onStreamTypeChanged(int i);

        void onStreamVolumeChanged(int i, boolean z);
    }

    public StreamVolumeManager(Context context, Listener listener, final int streamType, Looper audioManagerLooper, Looper listenerLooper, Clock clock) {
        this.applicationContext = context.getApplicationContext();
        this.listener = listener;
        StreamVolumeState initialState = new StreamVolumeState(streamType, 0, false, 0, 0);
        this.stateHandler = new BackgroundThreadStateHandler<>(initialState, audioManagerLooper, listenerLooper, clock, new BackgroundThreadStateHandler.StateChangeListener() { // from class: androidx.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda0
            @Override // androidx.media3.common.util.BackgroundThreadStateHandler.StateChangeListener
            public final void onStateChanged(Object obj, Object obj2) {
                this.f$0.onStreamVolumeStateChanged((StreamVolumeManager.StreamVolumeState) obj, (StreamVolumeManager.StreamVolumeState) obj2);
            }
        });
        this.stateHandler.runInBackground(new Runnable() { // from class: androidx.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m7890lambda$new$0$androidxmedia3exoplayerStreamVolumeManager(streamType);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$new$0$androidx-media3-exoplayer-StreamVolumeManager, reason: not valid java name */
    /* synthetic */ void m7890lambda$new$0$androidxmedia3exoplayerStreamVolumeManager(int streamType) {
        this.audioManager = (AudioManager) Preconditions.checkNotNull((AudioManager) this.applicationContext.getSystemService(MimeTypes.BASE_TYPE_AUDIO));
        VolumeChangeReceiver receiver = new VolumeChangeReceiver();
        IntentFilter filter = new IntentFilter(VOLUME_CHANGED_ACTION);
        try {
            this.applicationContext.registerReceiver(receiver, filter);
            this.receiver = receiver;
        } catch (RuntimeException e) {
            Log.w(TAG, "Error registering stream volume receiver", e);
        }
        this.stateHandler.setStateInBackground(generateState(streamType));
    }

    public void setStreamType(final int streamType) {
        this.stateHandler.updateStateAsync(new Function() { // from class: androidx.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda6
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return StreamVolumeManager.lambda$setStreamType$1(streamType, (StreamVolumeManager.StreamVolumeState) obj);
            }
        }, new Function() { // from class: androidx.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda7
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return this.f$0.m7894xb3c607b2(streamType, (StreamVolumeManager.StreamVolumeState) obj);
            }
        });
    }

    static /* synthetic */ StreamVolumeState lambda$setStreamType$1(int streamType, StreamVolumeState state) {
        return new StreamVolumeState(streamType, state.volume, state.muted, state.minVolume, state.maxVolume);
    }

    /* JADX INFO: renamed from: lambda$setStreamType$2$androidx-media3-exoplayer-StreamVolumeManager, reason: not valid java name */
    /* synthetic */ StreamVolumeState m7894xb3c607b2(int streamType, StreamVolumeState state) {
        return state.streamType == streamType ? state : generateState(streamType);
    }

    public int getMinVolume() {
        return this.stateHandler.get().minVolume;
    }

    public int getMaxVolume() {
        return this.stateHandler.get().maxVolume;
    }

    public int getVolume() {
        return this.stateHandler.get().volume;
    }

    public boolean isMuted() {
        return this.stateHandler.get().muted;
    }

    public void setVolume(final int volume, final int flags) {
        this.stateHandler.updateStateAsync(new Function() { // from class: androidx.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda4
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return StreamVolumeManager.lambda$setVolume$3(volume, (StreamVolumeManager.StreamVolumeState) obj);
            }
        }, new Function() { // from class: androidx.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda5
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return this.f$0.m7895lambda$setVolume$4$androidxmedia3exoplayerStreamVolumeManager(volume, flags, (StreamVolumeManager.StreamVolumeState) obj);
            }
        });
    }

    static /* synthetic */ StreamVolumeState lambda$setVolume$3(int volume, StreamVolumeState state) {
        return new StreamVolumeState(state.streamType, (volume < state.minVolume || volume > state.maxVolume) ? state.volume : volume, volume == 0, state.minVolume, state.maxVolume);
    }

    /* JADX INFO: renamed from: lambda$setVolume$4$androidx-media3-exoplayer-StreamVolumeManager, reason: not valid java name */
    /* synthetic */ StreamVolumeState m7895lambda$setVolume$4$androidxmedia3exoplayerStreamVolumeManager(int volume, int flags, StreamVolumeState state) {
        if (volume == state.volume || volume < state.minVolume || volume > state.maxVolume) {
            return state;
        }
        ((AudioManager) Preconditions.checkNotNull(this.audioManager)).setStreamVolume(state.streamType, volume, flags);
        return generateState(state.streamType);
    }

    public void increaseVolume(final int flags) {
        this.stateHandler.updateStateAsync(new Function() { // from class: androidx.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda12
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return StreamVolumeManager.lambda$increaseVolume$5((StreamVolumeManager.StreamVolumeState) obj);
            }
        }, new Function() { // from class: androidx.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda13
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return this.f$0.m7889x1af3b470(flags, (StreamVolumeManager.StreamVolumeState) obj);
            }
        });
    }

    static /* synthetic */ StreamVolumeState lambda$increaseVolume$5(StreamVolumeState state) {
        return new StreamVolumeState(state.streamType, state.volume < state.maxVolume ? state.volume + 1 : state.maxVolume, false, state.minVolume, state.maxVolume);
    }

    /* JADX INFO: renamed from: lambda$increaseVolume$6$androidx-media3-exoplayer-StreamVolumeManager, reason: not valid java name */
    /* synthetic */ StreamVolumeState m7889x1af3b470(int flags, StreamVolumeState state) {
        if (state.volume >= state.maxVolume) {
            return state;
        }
        ((AudioManager) Preconditions.checkNotNull(this.audioManager)).adjustStreamVolume(state.streamType, 1, flags);
        return generateState(state.streamType);
    }

    public void decreaseVolume(final int flags) {
        this.stateHandler.updateStateAsync(new Function() { // from class: androidx.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda2
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return StreamVolumeManager.lambda$decreaseVolume$7((StreamVolumeManager.StreamVolumeState) obj);
            }
        }, new Function() { // from class: androidx.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda3
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return this.f$0.m7888x928d2e4e(flags, (StreamVolumeManager.StreamVolumeState) obj);
            }
        });
    }

    static /* synthetic */ StreamVolumeState lambda$decreaseVolume$7(StreamVolumeState state) {
        return new StreamVolumeState(state.streamType, state.volume > state.minVolume ? state.volume - 1 : state.minVolume, state.volume <= 1, state.minVolume, state.maxVolume);
    }

    /* JADX INFO: renamed from: lambda$decreaseVolume$8$androidx-media3-exoplayer-StreamVolumeManager, reason: not valid java name */
    /* synthetic */ StreamVolumeState m7888x928d2e4e(int flags, StreamVolumeState state) {
        if (state.volume <= state.minVolume) {
            return state;
        }
        ((AudioManager) Preconditions.checkNotNull(this.audioManager)).adjustStreamVolume(state.streamType, -1, flags);
        return generateState(state.streamType);
    }

    public void setMuted(final boolean muted, final int flags) {
        this.stateHandler.updateStateAsync(new Function() { // from class: androidx.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda8
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return this.f$0.m7893lambda$setMuted$9$androidxmedia3exoplayerStreamVolumeManager(muted, (StreamVolumeManager.StreamVolumeState) obj);
            }
        }, new Function() { // from class: androidx.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda9
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return this.f$0.m7892lambda$setMuted$10$androidxmedia3exoplayerStreamVolumeManager(muted, flags, (StreamVolumeManager.StreamVolumeState) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$setMuted$9$androidx-media3-exoplayer-StreamVolumeManager, reason: not valid java name */
    /* synthetic */ StreamVolumeState m7893lambda$setMuted$9$androidxmedia3exoplayerStreamVolumeManager(boolean muted, StreamVolumeState state) {
        return new StreamVolumeState(state.streamType, state.muted == muted ? state.volume : muted ? 0 : this.volumeBeforeMute, muted, state.minVolume, state.maxVolume);
    }

    /* JADX INFO: renamed from: lambda$setMuted$10$androidx-media3-exoplayer-StreamVolumeManager, reason: not valid java name */
    /* synthetic */ StreamVolumeState m7892lambda$setMuted$10$androidxmedia3exoplayerStreamVolumeManager(boolean muted, int flags, StreamVolumeState state) {
        if (state.muted == muted) {
            return state;
        }
        Preconditions.checkNotNull(this.audioManager);
        this.audioManager.adjustStreamVolume(state.streamType, muted ? -100 : 100, flags);
        return generateState(state.streamType);
    }

    public void release() {
        this.stateHandler.updateStateAsync(new Function() { // from class: androidx.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda10
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return StreamVolumeManager.lambda$release$11((StreamVolumeManager.StreamVolumeState) obj);
            }
        }, new Function() { // from class: androidx.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda11
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return this.f$0.m7891lambda$release$12$androidxmedia3exoplayerStreamVolumeManager((StreamVolumeManager.StreamVolumeState) obj);
            }
        });
    }

    static /* synthetic */ StreamVolumeState lambda$release$11(StreamVolumeState state) {
        return state;
    }

    /* JADX INFO: renamed from: lambda$release$12$androidx-media3-exoplayer-StreamVolumeManager, reason: not valid java name */
    /* synthetic */ StreamVolumeState m7891lambda$release$12$androidxmedia3exoplayerStreamVolumeManager(StreamVolumeState state) {
        if (this.receiver != null) {
            try {
                this.applicationContext.unregisterReceiver(this.receiver);
            } catch (RuntimeException e) {
                Log.w(TAG, "Error unregistering stream volume receiver", e);
            }
            this.receiver = null;
        }
        return state;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onStreamVolumeStateChanged(StreamVolumeState oldState, StreamVolumeState newState) {
        if (!oldState.muted && newState.muted) {
            this.volumeBeforeMute = oldState.volume;
        }
        if (oldState.volume != newState.volume || oldState.muted != newState.muted) {
            this.listener.onStreamVolumeChanged(newState.volume, newState.muted);
        }
        if (oldState.streamType != newState.streamType || oldState.minVolume != newState.minVolume || oldState.maxVolume != newState.maxVolume) {
            this.listener.onStreamTypeChanged(newState.streamType);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public StreamVolumeState generateState(int streamType) {
        Preconditions.checkNotNull(this.audioManager);
        int volume = AudioManagerCompat.getStreamVolume(this.audioManager, streamType);
        boolean muted = AudioManagerCompat.isStreamMute(this.audioManager, streamType);
        int minVolume = AudioManagerCompat.getStreamMinVolume(this.audioManager, streamType);
        int maxVolume = AudioManagerCompat.getStreamMaxVolume(this.audioManager, streamType);
        return new StreamVolumeState(streamType, volume, muted, minVolume, maxVolume);
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class StreamVolumeState {
        public final int maxVolume;
        public final int minVolume;
        public final boolean muted;
        public final int streamType;
        public final int volume;

        public StreamVolumeState(int streamType, int volume, boolean muted, int minVolume, int maxVolume) {
            this.streamType = streamType;
            this.volume = volume;
            this.muted = muted;
            this.minVolume = minVolume;
            this.maxVolume = maxVolume;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class VolumeChangeReceiver extends BroadcastReceiver {
        private VolumeChangeReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            StreamVolumeManager.this.stateHandler.runInBackground(new Runnable() { // from class: androidx.media3.exoplayer.StreamVolumeManager$VolumeChangeReceiver$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m7896x433070e5();
                }
            });
        }

        /* JADX INFO: renamed from: lambda$onReceive$0$androidx-media3-exoplayer-StreamVolumeManager$VolumeChangeReceiver, reason: not valid java name */
        /* synthetic */ void m7896x433070e5() {
            if (StreamVolumeManager.this.receiver != null) {
                int streamType = ((StreamVolumeState) StreamVolumeManager.this.stateHandler.get()).streamType;
                StreamVolumeManager.this.stateHandler.setStateInBackground(StreamVolumeManager.this.generateState(streamType));
            }
        }
    }
}
