package androidx.media3.exoplayer.audio;

import android.content.Context;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.os.Build;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.audio.AudioManagerCompat;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.audio.AudioOffloadSupport;
import androidx.media3.exoplayer.audio.DefaultAudioSink;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes21.dex */
public final class DefaultAudioOffloadSupportProvider implements DefaultAudioSink.AudioOffloadSupportProvider {
    private static final String OFFLOAD_VARIABLE_RATE_SUPPORTED_KEY = "offloadVariableRateSupported";
    private final Context context;
    private Boolean isOffloadVariableRateSupported;

    public DefaultAudioOffloadSupportProvider() {
        this(null);
    }

    public DefaultAudioOffloadSupportProvider(Context context) {
        this.context = context == null ? null : context.getApplicationContext();
    }

    @Override // androidx.media3.exoplayer.audio.DefaultAudioSink.AudioOffloadSupportProvider
    public AudioOffloadSupport getAudioOffloadSupport(Format format, AudioAttributes audioAttributes) {
        Preconditions.checkNotNull(format);
        Preconditions.checkNotNull(audioAttributes);
        if (Build.VERSION.SDK_INT < 29 || format.sampleRate == -1) {
            return AudioOffloadSupport.DEFAULT_UNSUPPORTED;
        }
        boolean isOffloadVariableRateSupported = isOffloadVariableRateSupported(this.context);
        int encoding = MimeTypes.getEncoding((String) Preconditions.checkNotNull(format.sampleMimeType), format.codecs);
        if (encoding == 0 || Build.VERSION.SDK_INT < Util.getApiLevelThatAudioFormatIntroducedAudioEncoding(encoding)) {
            return AudioOffloadSupport.DEFAULT_UNSUPPORTED;
        }
        int channelConfig = Util.getAudioTrackChannelConfig(format.channelCount);
        if (channelConfig == 0) {
            return AudioOffloadSupport.DEFAULT_UNSUPPORTED;
        }
        try {
            AudioFormat audioFormat = Util.getAudioFormat(format.sampleRate, channelConfig, encoding);
            if (Build.VERSION.SDK_INT >= 33) {
                return getOffloadedPlaybackSupportV33(audioFormat, audioAttributes.getPlatformAudioAttributes(), isOffloadVariableRateSupported);
            }
            if (Build.VERSION.SDK_INT >= 31) {
                return getOffloadedPlaybackSupportV31(audioFormat, audioAttributes.getPlatformAudioAttributes(), isOffloadVariableRateSupported);
            }
            return getOffloadedPlaybackSupportV29(audioFormat, audioAttributes.getPlatformAudioAttributes(), isOffloadVariableRateSupported);
        } catch (IllegalArgumentException e) {
            return AudioOffloadSupport.DEFAULT_UNSUPPORTED;
        }
    }

    private boolean isOffloadVariableRateSupported(Context context) {
        if (this.isOffloadVariableRateSupported != null) {
            return this.isOffloadVariableRateSupported.booleanValue();
        }
        boolean z = false;
        if (context != null) {
            AudioManager audioManager = AudioManagerCompat.getAudioManager(context);
            String offloadVariableRateSupportedKeyValue = audioManager.getParameters(OFFLOAD_VARIABLE_RATE_SUPPORTED_KEY);
            if (offloadVariableRateSupportedKeyValue != null && offloadVariableRateSupportedKeyValue.equals("offloadVariableRateSupported=1")) {
                z = true;
            }
            this.isOffloadVariableRateSupported = Boolean.valueOf(z);
        } else {
            this.isOffloadVariableRateSupported = false;
        }
        return this.isOffloadVariableRateSupported.booleanValue();
    }

    private static AudioOffloadSupport getOffloadedPlaybackSupportV29(AudioFormat audioFormat, android.media.AudioAttributes audioAttributes, boolean isOffloadVariableRateSupported) {
        if (!AudioManager.isOffloadedPlaybackSupported(audioFormat, audioAttributes)) {
            return AudioOffloadSupport.DEFAULT_UNSUPPORTED;
        }
        return new AudioOffloadSupport.Builder().setIsFormatSupported(true).setIsSpeedChangeSupported(isOffloadVariableRateSupported).build();
    }

    private static AudioOffloadSupport getOffloadedPlaybackSupportV31(AudioFormat audioFormat, android.media.AudioAttributes audioAttributes, boolean isOffloadVariableRateSupported) {
        int playbackOffloadSupport = AudioManager.getPlaybackOffloadSupport(audioFormat, audioAttributes);
        if (playbackOffloadSupport == 0) {
            return AudioOffloadSupport.DEFAULT_UNSUPPORTED;
        }
        AudioOffloadSupport.Builder audioOffloadSupport = new AudioOffloadSupport.Builder();
        boolean isGaplessSupported = Build.VERSION.SDK_INT > 32 && playbackOffloadSupport == 2;
        return audioOffloadSupport.setIsFormatSupported(true).setIsGaplessSupported(isGaplessSupported).setIsSpeedChangeSupported(isOffloadVariableRateSupported).build();
    }

    private static AudioOffloadSupport getOffloadedPlaybackSupportV33(AudioFormat audioFormat, android.media.AudioAttributes audioAttributes, boolean isOffloadVariableRateSupported) {
        int directSupport = AudioManager.getDirectPlaybackSupport(audioFormat, audioAttributes);
        if ((directSupport & 1) == 0) {
            return AudioOffloadSupport.DEFAULT_UNSUPPORTED;
        }
        boolean isGaplessSupported = (directSupport & 3) == 3;
        return new AudioOffloadSupport.Builder().setIsFormatSupported(true).setIsGaplessSupported(isGaplessSupported).setIsSpeedChangeSupported(isOffloadVariableRateSupported).build();
    }
}
