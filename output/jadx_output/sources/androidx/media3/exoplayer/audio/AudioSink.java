package androidx.media3.exoplayer.audio;

import android.media.AudioDeviceInfo;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.AuxEffectInfo;
import androidx.media3.common.Format;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.util.Clock;
import androidx.media3.exoplayer.analytics.PlayerId;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes21.dex */
public interface AudioSink {
    public static final long CURRENT_POSITION_NOT_SET = Long.MIN_VALUE;
    public static final int OFFLOAD_MODE_DISABLED = 0;
    public static final int OFFLOAD_MODE_ENABLED_GAPLESS_NOT_REQUIRED = 2;
    public static final int OFFLOAD_MODE_ENABLED_GAPLESS_REQUIRED = 1;
    public static final int SINK_FORMAT_SUPPORTED_DIRECTLY = 2;
    public static final int SINK_FORMAT_SUPPORTED_WITH_TRANSCODING = 1;
    public static final int SINK_FORMAT_UNSUPPORTED = 0;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface OffloadMode {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface SinkFormatSupport {
    }

    void configure(Format format, int i, int[] iArr) throws ConfigurationException;

    void disableTunneling();

    void enableTunnelingV21();

    void flush();

    AudioAttributes getAudioAttributes();

    long getAudioTrackBufferSizeUs();

    long getCurrentPositionUs(boolean z);

    int getFormatSupport(Format format);

    PlaybackParameters getPlaybackParameters();

    boolean getSkipSilenceEnabled();

    boolean handleBuffer(ByteBuffer byteBuffer, long j, int i) throws WriteException, InitializationException;

    void handleDiscontinuity();

    boolean hasPendingData();

    boolean isEnded();

    void pause();

    void play();

    void playToEndOfStream() throws WriteException;

    void reset();

    void setAudioAttributes(AudioAttributes audioAttributes);

    void setAudioSessionId(int i);

    void setAuxEffectInfo(AuxEffectInfo auxEffectInfo);

    void setListener(Listener listener);

    void setPlaybackParameters(PlaybackParameters playbackParameters);

    void setSkipSilenceEnabled(boolean z);

    void setVolume(float f);

    boolean supportsFormat(Format format);

    public interface Listener {
        void onPositionDiscontinuity();

        void onSkipSilenceEnabledChanged(boolean z);

        void onUnderrun(int i, long j, long j2);

        default void onPositionAdvancing(long playoutStartSystemTimeMs) {
        }

        default void onOffloadBufferEmptying() {
        }

        default void onOffloadBufferFull() {
        }

        default void onAudioSinkError(Exception audioSinkError) {
        }

        default void onAudioCapabilitiesChanged() {
        }

        default void onAudioTrackInitialized(AudioTrackConfig audioTrackConfig) {
        }

        default void onAudioTrackReleased(AudioTrackConfig audioTrackConfig) {
        }

        default void onSilenceSkipped() {
        }

        default void onAudioSessionIdChanged(int audioSessionId) {
        }
    }

    public static final class AudioTrackConfig {
        public final int bufferSize;
        public final int channelConfig;
        public final int encoding;
        public final boolean offload;
        public final int sampleRate;
        public final boolean tunneling;

        public AudioTrackConfig(int encoding, int sampleRate, int channelConfig, boolean tunneling, boolean offload, int bufferSize) {
            this.encoding = encoding;
            this.sampleRate = sampleRate;
            this.channelConfig = channelConfig;
            this.tunneling = tunneling;
            this.offload = offload;
            this.bufferSize = bufferSize;
        }
    }

    public static final class ConfigurationException extends Exception {
        public final Format format;

        public ConfigurationException(Throwable cause, Format format) {
            super(cause);
            this.format = format;
        }

        public ConfigurationException(String message, Format format) {
            super(message);
            this.format = format;
        }
    }

    public static final class InitializationException extends Exception {
        public final int audioTrackState;
        public final Format format;
        public final boolean isRecoverable;

        public InitializationException(String message, int audioTrackState, Format format, boolean isRecoverable, Throwable cause) {
            super(message, cause);
            this.audioTrackState = audioTrackState;
            this.isRecoverable = isRecoverable;
            this.format = format;
        }

        public InitializationException(int audioTrackState, int sampleRate, int channelConfig, int encoding, int bufferSize, Format format, boolean isRecoverable, Exception audioTrackException) {
            this("AudioTrack init failed " + audioTrackState + " Config(" + sampleRate + ", " + channelConfig + ", " + encoding + ", " + bufferSize + ") " + format + (isRecoverable ? " (recoverable)" : ""), audioTrackState, format, isRecoverable, audioTrackException);
        }
    }

    public static final class WriteException extends Exception {
        public final int errorCode;
        public final Format format;
        public final boolean isRecoverable;

        public WriteException(int errorCode, Format format, boolean isRecoverable) {
            super("AudioTrack write failed: " + errorCode);
            this.isRecoverable = isRecoverable;
            this.errorCode = errorCode;
            this.format = format;
        }
    }

    public static final class UnexpectedDiscontinuityException extends Exception {
        public final long actualPresentationTimeUs;
        public final long expectedPresentationTimeUs;

        public UnexpectedDiscontinuityException(long actualPresentationTimeUs, long expectedPresentationTimeUs) {
            super("Unexpected audio track timestamp discontinuity: expected " + expectedPresentationTimeUs + ", got " + actualPresentationTimeUs);
            this.actualPresentationTimeUs = actualPresentationTimeUs;
            this.expectedPresentationTimeUs = expectedPresentationTimeUs;
        }
    }

    default void setPlayerId(PlayerId playerId) {
    }

    default void setClock(Clock clock) {
    }

    default AudioOffloadSupport getFormatOffloadSupport(Format format) {
        return AudioOffloadSupport.DEFAULT_UNSUPPORTED;
    }

    default AudioCapabilities getAudioCapabilities() {
        return null;
    }

    default void setPreferredDevice(AudioDeviceInfo audioDeviceInfo) {
    }

    default void setVirtualDeviceId(int virtualDeviceId) {
    }

    default void setOutputStreamOffsetUs(long outputStreamOffsetUs) {
    }

    default void setOffloadMode(int offloadMode) {
    }

    default void setOffloadDelayPadding(int delayInFrames, int paddingInFrames) {
    }

    default void setAudioOutputProvider(AudioOutputProvider audioOutputProvider) {
        throw new UnsupportedOperationException("AudioSink doesn't support setAudioOutputProvider");
    }

    default void release() {
    }
}
