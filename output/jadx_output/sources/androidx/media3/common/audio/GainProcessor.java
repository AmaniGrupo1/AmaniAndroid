package androidx.media3.common.audio;

import androidx.media3.common.C;
import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import java.nio.ByteBuffer;
import java.util.Objects;

/* JADX INFO: loaded from: classes21.dex */
public final class GainProcessor extends BaseAudioProcessor {
    private final GainProvider gainProvider;
    private long readFrames;

    public interface GainProvider {
        float getGainFactorAtSamplePosition(long j, int i);

        long isUnityUntil(long j, int i);
    }

    public GainProcessor(GainProvider gainProvider) {
        this.gainProvider = (GainProvider) Preconditions.checkNotNull(gainProvider);
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public AudioProcessor.AudioFormat onConfigure(AudioProcessor.AudioFormat inputAudioFormat) throws AudioProcessor.UnhandledAudioFormatException {
        int encoding = inputAudioFormat.encoding;
        if (encoding != 2 && encoding != 4) {
            throw new AudioProcessor.UnhandledAudioFormatException("Invalid PCM encoding. Expected 16 bit PCM or float PCM.", inputAudioFormat);
        }
        return inputAudioFormat;
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor, androidx.media3.common.audio.AudioProcessor
    public boolean isActive() {
        return (!super.isActive() || Objects.equals(this.inputAudioFormat, AudioProcessor.AudioFormat.NOT_SET) || this.gainProvider.isUnityUntil(0L, this.inputAudioFormat.sampleRate) == Long.MIN_VALUE) ? false : true;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void queueInput(ByteBuffer inputBuffer) {
        Preconditions.checkState(!Objects.equals(this.inputAudioFormat, AudioProcessor.AudioFormat.NOT_SET), "Audio processor must be configured and flushed before calling queueInput().");
        if (!inputBuffer.hasRemaining()) {
            return;
        }
        Preconditions.checkArgument(inputBuffer.remaining() % this.inputAudioFormat.bytesPerFrame == 0, "Queued an incomplete frame.");
        ByteBuffer buffer = replaceOutputBuffer(inputBuffer.remaining());
        while (inputBuffer.hasRemaining()) {
            float gain = this.gainProvider.getGainFactorAtSamplePosition(this.readFrames, this.inputAudioFormat.sampleRate);
            if (gain == 1.0f) {
                int oldLimit = inputBuffer.limit();
                long regionEnd = this.gainProvider.isUnityUntil(this.readFrames, this.inputAudioFormat.sampleRate);
                Preconditions.checkState(regionEnd != C.TIME_UNSET, "Expected a valid end boundary for unity region.");
                if (regionEnd != Long.MIN_VALUE) {
                    long limitOffsetBytes = (regionEnd - this.readFrames) * ((long) this.inputAudioFormat.bytesPerFrame);
                    inputBuffer.limit(Math.min(oldLimit, ((int) limitOffsetBytes) + inputBuffer.position()));
                }
                long limitOffsetBytes2 = this.readFrames;
                this.readFrames = limitOffsetBytes2 + ((long) (inputBuffer.remaining() / this.inputAudioFormat.bytesPerFrame));
                buffer.put(inputBuffer);
                inputBuffer.limit(oldLimit);
            } else {
                for (int i = 0; i < this.inputAudioFormat.channelCount; i++) {
                    switch (this.inputAudioFormat.encoding) {
                        case 2:
                            buffer.putShort((short) (inputBuffer.getShort() * gain));
                            break;
                        case 3:
                        default:
                            throw new IllegalStateException("Unexpected PCM encoding: " + this.inputAudioFormat.encoding);
                        case 4:
                            buffer.putFloat(inputBuffer.getFloat() * gain);
                            break;
                    }
                }
                this.readFrames++;
            }
        }
        buffer.flip();
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public void onFlush(AudioProcessor.StreamMetadata streamMetadata) {
        this.readFrames = Util.durationUsToSampleCount(streamMetadata.positionOffsetUs, this.inputAudioFormat.sampleRate);
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public void onReset() {
        this.readFrames = 0L;
    }
}
