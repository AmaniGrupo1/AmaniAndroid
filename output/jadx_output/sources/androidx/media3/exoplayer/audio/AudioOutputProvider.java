package androidx.media3.exoplayer.audio;

import android.media.AudioDeviceInfo;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.Format;
import androidx.media3.common.util.Clock;
import com.google.common.base.Preconditions;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Objects;

/* JADX INFO: loaded from: classes21.dex */
public interface AudioOutputProvider {
    public static final int FORMAT_SUPPORTED_DIRECTLY = 2;
    public static final int FORMAT_SUPPORTED_WITH_TRANSCODING = 1;
    public static final int FORMAT_UNSUPPORTED = 0;

    public interface Listener {
        void onFormatSupportChanged();
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface SupportLevel {
    }

    void addListener(Listener listener);

    AudioOutput getAudioOutput(OutputConfig outputConfig) throws InitializationException;

    FormatSupport getFormatSupport(FormatConfig formatConfig);

    OutputConfig getOutputConfig(FormatConfig formatConfig) throws ConfigurationException;

    void release();

    void removeListener(Listener listener);

    public static final class FormatConfig {
        public final AudioAttributes audioAttributes;
        public final int audioSessionId;
        public final boolean enableHighResolutionPcmOutput;
        public final boolean enableOffload;
        public final boolean enablePlaybackParameters;
        public final boolean enableTunneling;
        public final Format format;
        public final int preferredBufferSize;
        public final AudioDeviceInfo preferredDevice;
        public final int virtualDeviceId;

        private FormatConfig(Builder builder) {
            this.format = builder.format;
            this.audioAttributes = builder.audioAttributes;
            this.preferredDevice = builder.preferredDevice;
            this.enableHighResolutionPcmOutput = builder.enableHighResolutionPcmOutput;
            this.enablePlaybackParameters = builder.enablePlaybackParameters;
            this.enableOffload = builder.enableOffload;
            this.audioSessionId = builder.audioSessionId;
            this.virtualDeviceId = builder.virtualDeviceId;
            this.enableTunneling = builder.enableTunneling;
            this.preferredBufferSize = builder.preferredBufferSize;
        }

        public Builder buildUpon() {
            return new Builder();
        }

        public static final class Builder {
            private AudioAttributes audioAttributes;
            private int audioSessionId;
            private boolean enableHighResolutionPcmOutput;
            private boolean enableOffload;
            private boolean enablePlaybackParameters;
            private boolean enableTunneling;
            private final Format format;
            private int preferredBufferSize;
            private AudioDeviceInfo preferredDevice;
            private int virtualDeviceId;

            public Builder(Format format) {
                this.format = format;
                this.audioAttributes = AudioAttributes.DEFAULT;
                this.audioSessionId = 0;
                this.virtualDeviceId = -1;
                this.preferredBufferSize = -1;
            }

            private Builder(FormatConfig config) {
                this.format = config.format;
                this.audioAttributes = config.audioAttributes;
                this.preferredDevice = config.preferredDevice;
                this.enableHighResolutionPcmOutput = config.enableHighResolutionPcmOutput;
                this.enablePlaybackParameters = config.enablePlaybackParameters;
                this.enableOffload = config.enableOffload;
                this.audioSessionId = config.audioSessionId;
                this.virtualDeviceId = config.virtualDeviceId;
                this.enableTunneling = config.enableTunneling;
                this.preferredBufferSize = config.preferredBufferSize;
            }

            public Builder setAudioAttributes(AudioAttributes audioAttributes) {
                this.audioAttributes = audioAttributes;
                return this;
            }

            public Builder setPreferredDevice(AudioDeviceInfo preferredDevice) {
                this.preferredDevice = preferredDevice;
                return this;
            }

            public Builder setEnableHighResolutionPcmOutput(boolean enableHighResolutionPcmOutput) {
                this.enableHighResolutionPcmOutput = enableHighResolutionPcmOutput;
                return this;
            }

            public Builder setEnablePlaybackParameters(boolean enablePlaybackParameters) {
                this.enablePlaybackParameters = enablePlaybackParameters;
                return this;
            }

            public Builder setEnableOffload(boolean enableOffload) {
                this.enableOffload = enableOffload;
                return this;
            }

            public Builder setAudioSessionId(int audioSessionId) {
                this.audioSessionId = audioSessionId;
                return this;
            }

            public Builder setVirtualDeviceId(int virtualDeviceId) {
                this.virtualDeviceId = virtualDeviceId;
                return this;
            }

            public Builder setEnableTunneling(boolean enableTunneling) {
                this.enableTunneling = enableTunneling;
                return this;
            }

            public Builder setPreferredBufferSize(int preferredBufferSize) {
                this.preferredBufferSize = preferredBufferSize;
                return this;
            }

            public FormatConfig build() {
                return new FormatConfig(this);
            }
        }
    }

    public static final class OutputConfig {
        public final AudioAttributes audioAttributes;
        public final int audioSessionId;
        public final int bufferSize;
        public final int channelMask;
        public final int encoding;
        public final boolean isOffload;
        public final boolean isTunneling;
        public final int sampleRate;
        public final boolean useOffloadGapless;
        public final boolean usePlaybackParameters;
        public final int virtualDeviceId;

        private OutputConfig(Builder builder) {
            this.encoding = builder.encoding;
            this.sampleRate = builder.sampleRate;
            this.channelMask = builder.channelMask;
            this.isTunneling = builder.isTunneling;
            this.isOffload = builder.isOffload;
            this.bufferSize = builder.bufferSize;
            this.audioAttributes = builder.audioAttributes;
            this.audioSessionId = builder.audioSessionId;
            this.virtualDeviceId = builder.virtualDeviceId;
            this.usePlaybackParameters = builder.usePlaybackParameters;
            this.useOffloadGapless = builder.useOffloadGapless;
        }

        public Builder buildUpon() {
            return new Builder();
        }

        public boolean equals(Object o) {
            if (this == o) {
                return true;
            }
            if (o == null || getClass() != o.getClass()) {
                return false;
            }
            OutputConfig that = (OutputConfig) o;
            if (this.encoding == that.encoding && this.sampleRate == that.sampleRate && this.channelMask == that.channelMask && this.isTunneling == that.isTunneling && this.isOffload == that.isOffload && this.bufferSize == that.bufferSize && this.audioSessionId == that.audioSessionId && this.virtualDeviceId == that.virtualDeviceId && this.usePlaybackParameters == that.usePlaybackParameters && this.useOffloadGapless == that.useOffloadGapless && this.audioAttributes.equals(that.audioAttributes)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Objects.hash(Integer.valueOf(this.encoding), Integer.valueOf(this.sampleRate), Integer.valueOf(this.channelMask), Boolean.valueOf(this.isTunneling), Boolean.valueOf(this.isOffload), Integer.valueOf(this.bufferSize), this.audioAttributes, Integer.valueOf(this.audioSessionId), Integer.valueOf(this.virtualDeviceId), Boolean.valueOf(this.useOffloadGapless), Boolean.valueOf(this.usePlaybackParameters));
        }

        public static final class Builder {
            private AudioAttributes audioAttributes;
            private int audioSessionId;
            private int bufferSize;
            private int channelMask;
            private int encoding;
            private boolean isOffload;
            private boolean isTunneling;
            private int sampleRate;
            private boolean useOffloadGapless;
            private boolean usePlaybackParameters;
            private int virtualDeviceId;

            public Builder() {
                this.audioAttributes = AudioAttributes.DEFAULT;
                this.audioSessionId = 0;
                this.virtualDeviceId = -1;
            }

            private Builder(OutputConfig config) {
                this.encoding = config.encoding;
                this.sampleRate = config.sampleRate;
                this.channelMask = config.channelMask;
                this.isTunneling = config.isTunneling;
                this.isOffload = config.isOffload;
                this.bufferSize = config.bufferSize;
                this.audioAttributes = config.audioAttributes;
                this.audioSessionId = config.audioSessionId;
                this.virtualDeviceId = config.virtualDeviceId;
                this.usePlaybackParameters = config.usePlaybackParameters;
                this.useOffloadGapless = config.useOffloadGapless;
            }

            public Builder setEncoding(int encoding) {
                this.encoding = encoding;
                return this;
            }

            public Builder setSampleRate(int sampleRate) {
                this.sampleRate = sampleRate;
                return this;
            }

            public Builder setChannelMask(int channelMask) {
                this.channelMask = channelMask;
                return this;
            }

            public Builder setIsTunneling(boolean isTunneling) {
                this.isTunneling = isTunneling;
                return this;
            }

            public Builder setIsOffload(boolean isOffload) {
                this.isOffload = isOffload;
                return this;
            }

            public Builder setBufferSize(int bufferSize) {
                this.bufferSize = bufferSize;
                return this;
            }

            public Builder setAudioAttributes(AudioAttributes audioAttributes) {
                this.audioAttributes = audioAttributes;
                return this;
            }

            public Builder setAudioSessionId(int audioSessionId) {
                this.audioSessionId = audioSessionId;
                return this;
            }

            public Builder setVirtualDeviceId(int virtualDeviceId) {
                this.virtualDeviceId = virtualDeviceId;
                return this;
            }

            public Builder setUsePlaybackParameters(boolean usePlaybackParameters) {
                this.usePlaybackParameters = usePlaybackParameters;
                return this;
            }

            public Builder setUseOffloadGapless(boolean useOffloadGapless) {
                this.useOffloadGapless = useOffloadGapless;
                return this;
            }

            public OutputConfig build() {
                return new OutputConfig(this);
            }
        }
    }

    public static final class FormatSupport {
        public static final FormatSupport UNSUPPORTED = new Builder().build();
        public final boolean isFormatSupportedForOffload;
        public final boolean isGaplessSupportedForOffload;
        public final boolean isSpeedChangeSupportedForOffload;
        public final int supportLevel;

        public static final class Builder {
            private boolean isFormatSupportedForOffload;
            private boolean isGaplessSupportedForOffload;
            private boolean isSpeedChangeSupportedForOffload;
            private int supportLevel;

            public Builder() {
                this.supportLevel = 0;
            }

            private Builder(FormatSupport other) {
                this.isFormatSupportedForOffload = other.isFormatSupportedForOffload;
                this.isGaplessSupportedForOffload = other.isGaplessSupportedForOffload;
                this.isSpeedChangeSupportedForOffload = other.isSpeedChangeSupportedForOffload;
                this.supportLevel = other.supportLevel;
            }

            public Builder setIsFormatSupportedForOffload(boolean isFormatSupportedForOffload) {
                this.isFormatSupportedForOffload = isFormatSupportedForOffload;
                return this;
            }

            public Builder setIsGaplessSupportedForOffload(boolean isGaplessSupportedForOffload) {
                this.isGaplessSupportedForOffload = isGaplessSupportedForOffload;
                return this;
            }

            public Builder setIsSpeedChangeSupportedForOffload(boolean isSpeedChangeSupportedForOffload) {
                this.isSpeedChangeSupportedForOffload = isSpeedChangeSupportedForOffload;
                return this;
            }

            public Builder setFormatSupportLevel(int supportLevel) {
                this.supportLevel = supportLevel;
                return this;
            }

            public FormatSupport build() {
                if (!this.isFormatSupportedForOffload && (this.isGaplessSupportedForOffload || this.isSpeedChangeSupportedForOffload)) {
                    throw new IllegalStateException("Secondary offload attribute fields are true but primary isFormatSupportedForOffload is false");
                }
                return new FormatSupport(this);
            }
        }

        private FormatSupport(Builder builder) {
            this.isFormatSupportedForOffload = builder.isFormatSupportedForOffload;
            this.isGaplessSupportedForOffload = builder.isGaplessSupportedForOffload;
            this.isSpeedChangeSupportedForOffload = builder.isSpeedChangeSupportedForOffload;
            this.supportLevel = builder.supportLevel;
        }

        public Builder buildUpon() {
            return new Builder();
        }
    }

    public static final class ConfigurationException extends Exception {
        public ConfigurationException(String message) {
            super((String) Preconditions.checkNotNull(message));
        }
    }

    public static final class InitializationException extends Exception {
        public InitializationException() {
        }

        public InitializationException(Throwable cause) {
            super(cause);
        }
    }

    default void setClock(Clock clock) {
    }
}
