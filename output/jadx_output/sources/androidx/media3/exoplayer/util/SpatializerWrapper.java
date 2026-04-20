package androidx.media3.exoplayer.util;

import android.content.Context;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.Spatializer;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.audio.AudioManagerCompat;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes21.dex */
public class SpatializerWrapper {
    private final Handler handler;
    private final Spatializer.OnSpatializerStateChangedListener listener;
    private final boolean spatializationSupported;
    private final Spatializer spatializer;

    public SpatializerWrapper(Context context, final Runnable spatializerChangedCallback, Boolean deviceIsTv) {
        AudioManager audioManager = context == null ? null : AudioManagerCompat.getAudioManager(context);
        if (audioManager == null || (deviceIsTv != null && deviceIsTv.booleanValue())) {
            this.spatializer = null;
            this.spatializationSupported = false;
            this.handler = null;
            this.listener = null;
            return;
        }
        this.spatializer = audioManager.getSpatializer();
        this.spatializationSupported = this.spatializer.getImmersiveAudioLevel() != 0;
        if (spatializerChangedCallback == null) {
            this.handler = null;
            this.listener = null;
            return;
        }
        this.handler = new Handler((Looper) Preconditions.checkNotNull(Looper.myLooper()));
        this.listener = new Spatializer.OnSpatializerStateChangedListener() { // from class: androidx.media3.exoplayer.util.SpatializerWrapper.1
            @Override // android.media.Spatializer.OnSpatializerStateChangedListener
            public void onSpatializerEnabledChanged(Spatializer spatializer, boolean enabled) {
                spatializerChangedCallback.run();
            }

            @Override // android.media.Spatializer.OnSpatializerStateChangedListener
            public void onSpatializerAvailableChanged(Spatializer spatializer, boolean available) {
                spatializerChangedCallback.run();
            }
        };
        Spatializer spatializer = this.spatializer;
        final Handler handler = this.handler;
        Objects.requireNonNull(handler);
        spatializer.addOnSpatializerStateChangedListener(new Executor() { // from class: androidx.media3.exoplayer.util.SpatializerWrapper$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                handler.post(runnable);
            }
        }, this.listener);
    }

    public boolean isSupportedAvailableAndEnabled() {
        return this.spatializer != null && this.spatializationSupported && isAvailable() && isEnabled();
    }

    public boolean isSpatializationSupported() {
        return this.spatializationSupported;
    }

    public boolean isAvailable() {
        return this.spatializer != null && this.spatializer.isAvailable();
    }

    public boolean isEnabled() {
        return this.spatializer != null && this.spatializer.isEnabled();
    }

    public boolean canBeSpatialized(AudioAttributes audioAttributes, Format format) {
        int linearChannelCount;
        if (!isSupportedAvailableAndEnabled()) {
            return false;
        }
        if (Objects.equals(format.sampleMimeType, MimeTypes.AUDIO_E_AC3_JOC)) {
            linearChannelCount = format.channelCount == 16 ? 12 : format.channelCount;
        } else if (Objects.equals(format.sampleMimeType, MimeTypes.AUDIO_IAMF)) {
            linearChannelCount = format.channelCount == -1 ? 6 : format.channelCount;
        } else if (Objects.equals(format.sampleMimeType, MimeTypes.AUDIO_AC4)) {
            linearChannelCount = (format.channelCount == 18 || format.channelCount == 21) ? 24 : format.channelCount;
        } else {
            linearChannelCount = format.channelCount;
        }
        int channelConfig = Util.getAudioTrackChannelConfig(linearChannelCount);
        if (channelConfig == 0) {
            return false;
        }
        AudioFormat.Builder builder = new AudioFormat.Builder().setEncoding(2).setChannelMask(channelConfig);
        if (format.sampleRate != -1) {
            builder.setSampleRate(format.sampleRate);
        }
        return ((Spatializer) Preconditions.checkNotNull(this.spatializer)).canBeSpatialized(audioAttributes.getPlatformAudioAttributes(), builder.build());
    }

    public List<Integer> getSpatializedChannelMasks() {
        if (!isSupportedAvailableAndEnabled()) {
            return ImmutableList.of();
        }
        if (Build.VERSION.SDK_INT >= 36) {
            return ((Spatializer) Preconditions.checkNotNull(this.spatializer)).getSpatializedChannelMasks();
        }
        return ImmutableList.of(252);
    }

    public void release() {
        if (this.spatializer == null || this.listener == null || this.handler == null) {
            return;
        }
        this.spatializer.removeOnSpatializerStateChangedListener(this.listener);
        this.handler.removeCallbacksAndMessages(null);
    }
}
