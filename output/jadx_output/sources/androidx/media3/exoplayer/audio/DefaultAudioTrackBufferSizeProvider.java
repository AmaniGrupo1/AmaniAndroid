package androidx.media3.exoplayer.audio;

import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.audio.DefaultAudioSink;
import androidx.media3.extractor.ExtractorUtil;
import com.google.common.base.Preconditions;
import com.google.common.math.IntMath;
import com.google.common.primitives.Ints;
import java.math.RoundingMode;

/* JADX INFO: loaded from: classes21.dex */
public class DefaultAudioTrackBufferSizeProvider implements DefaultAudioSink.AudioTrackBufferSizeProvider {
    private static final int AC3_BUFFER_MULTIPLICATION_FACTOR = 2;
    private static final int DTSHD_BUFFER_MULTIPLICATION_FACTOR = 4;
    private static final int MAX_PCM_BUFFER_DURATION_US = 750000;
    private static final int MIN_PCM_BUFFER_DURATION_US = 250000;
    private static final int OFFLOAD_BUFFER_DURATION_US = 50000000;
    private static final int PASSTHROUGH_BUFFER_DURATION_US = 250000;
    private static final int PCM_BUFFER_MULTIPLICATION_FACTOR = 4;
    public final int ac3BufferMultiplicationFactor;
    public final int dtshdBufferMultiplicationFactor;
    protected final int maxPcmBufferDurationUs;
    protected final int minPcmBufferDurationUs;
    protected final int offloadBufferDurationUs;
    protected final int passthroughBufferDurationUs;
    protected final int pcmBufferMultiplicationFactor;

    public static class Builder {
        private int minPcmBufferDurationUs = 250000;
        private int maxPcmBufferDurationUs = DefaultAudioTrackBufferSizeProvider.MAX_PCM_BUFFER_DURATION_US;
        private int pcmBufferMultiplicationFactor = 4;
        private int passthroughBufferDurationUs = 250000;
        private int offloadBufferDurationUs = DefaultAudioTrackBufferSizeProvider.OFFLOAD_BUFFER_DURATION_US;
        private int ac3BufferMultiplicationFactor = 2;
        private int dtshdBufferMultiplicationFactor = 4;

        public Builder setMinPcmBufferDurationUs(int minPcmBufferDurationUs) {
            this.minPcmBufferDurationUs = minPcmBufferDurationUs;
            return this;
        }

        public Builder setMaxPcmBufferDurationUs(int maxPcmBufferDurationUs) {
            this.maxPcmBufferDurationUs = maxPcmBufferDurationUs;
            return this;
        }

        public Builder setPcmBufferMultiplicationFactor(int pcmBufferMultiplicationFactor) {
            this.pcmBufferMultiplicationFactor = pcmBufferMultiplicationFactor;
            return this;
        }

        public Builder setPassthroughBufferDurationUs(int passthroughBufferDurationUs) {
            this.passthroughBufferDurationUs = passthroughBufferDurationUs;
            return this;
        }

        public Builder setOffloadBufferDurationUs(int offloadBufferDurationUs) {
            this.offloadBufferDurationUs = offloadBufferDurationUs;
            return this;
        }

        public Builder setAc3BufferMultiplicationFactor(int ac3BufferMultiplicationFactor) {
            this.ac3BufferMultiplicationFactor = ac3BufferMultiplicationFactor;
            return this;
        }

        public Builder setDtshdBufferMultiplicationFactor(int dtshdBufferMultiplicationFactor) {
            this.dtshdBufferMultiplicationFactor = dtshdBufferMultiplicationFactor;
            return this;
        }

        public DefaultAudioTrackBufferSizeProvider build() {
            return new DefaultAudioTrackBufferSizeProvider(this);
        }
    }

    protected DefaultAudioTrackBufferSizeProvider(Builder builder) {
        this.minPcmBufferDurationUs = builder.minPcmBufferDurationUs;
        this.maxPcmBufferDurationUs = builder.maxPcmBufferDurationUs;
        this.pcmBufferMultiplicationFactor = builder.pcmBufferMultiplicationFactor;
        this.passthroughBufferDurationUs = builder.passthroughBufferDurationUs;
        this.offloadBufferDurationUs = builder.offloadBufferDurationUs;
        this.ac3BufferMultiplicationFactor = builder.ac3BufferMultiplicationFactor;
        this.dtshdBufferMultiplicationFactor = builder.dtshdBufferMultiplicationFactor;
    }

    @Override // androidx.media3.exoplayer.audio.DefaultAudioSink.AudioTrackBufferSizeProvider
    public int getBufferSizeInBytes(int minBufferSizeInBytes, int encoding, int outputMode, int pcmFrameSize, int sampleRate, int bitrate, double maxAudioTrackPlaybackSpeed) {
        int bufferSize = get1xBufferSizeInBytes(minBufferSizeInBytes, encoding, outputMode, pcmFrameSize, sampleRate, bitrate);
        return (((Math.max(minBufferSizeInBytes, (int) (((double) bufferSize) * maxAudioTrackPlaybackSpeed)) + pcmFrameSize) - 1) / pcmFrameSize) * pcmFrameSize;
    }

    protected int get1xBufferSizeInBytes(int minBufferSizeInBytes, int encoding, int outputMode, int pcmFrameSize, int sampleRate, int bitrate) {
        switch (outputMode) {
            case 0:
                return getPcmBufferSizeInBytes(minBufferSizeInBytes, sampleRate, pcmFrameSize);
            case 1:
                return getOffloadBufferSizeInBytes(encoding);
            case 2:
                return getPassthroughBufferSizeInBytes(encoding, bitrate);
            default:
                throw new IllegalArgumentException();
        }
    }

    protected int getPcmBufferSizeInBytes(int minBufferSizeInBytes, int samplingRate, int frameSize) {
        int targetBufferSize = this.pcmBufferMultiplicationFactor * minBufferSizeInBytes;
        int minAppBufferSize = durationUsToBytes(this.minPcmBufferDurationUs, samplingRate, frameSize);
        int maxAppBufferSize = durationUsToBytes(this.maxPcmBufferDurationUs, samplingRate, frameSize);
        return Util.constrainValue(targetBufferSize, minAppBufferSize, maxAppBufferSize);
    }

    protected int getPassthroughBufferSizeInBytes(int encoding, int bitrate) {
        int byteRate;
        int bufferSizeUs = this.passthroughBufferDurationUs;
        if (encoding == 5) {
            bufferSizeUs *= this.ac3BufferMultiplicationFactor;
        } else if (encoding == 8) {
            bufferSizeUs *= this.dtshdBufferMultiplicationFactor;
        }
        if (bitrate != -1) {
            byteRate = IntMath.divide(bitrate, 8, RoundingMode.CEILING);
        } else {
            byteRate = getNonPcmMaximumEncodedRateBytesPerSecond(encoding);
        }
        return Ints.checkedCast((((long) bufferSizeUs) * ((long) byteRate)) / 1000000);
    }

    protected int getOffloadBufferSizeInBytes(int encoding) {
        int maxByteRate = getNonPcmMaximumEncodedRateBytesPerSecond(encoding);
        return Ints.checkedCast((((long) this.offloadBufferDurationUs) * ((long) maxByteRate)) / 1000000);
    }

    protected static int durationUsToBytes(int durationUs, int samplingRate, int frameSize) {
        return Ints.checkedCast(((((long) durationUs) * ((long) samplingRate)) * ((long) frameSize)) / 1000000);
    }

    private static int getNonPcmMaximumEncodedRateBytesPerSecond(int encoding) {
        int rate = ExtractorUtil.getMaximumEncodedRateBytesPerSecond(encoding);
        Preconditions.checkState(rate != -2147483647);
        return rate;
    }
}
