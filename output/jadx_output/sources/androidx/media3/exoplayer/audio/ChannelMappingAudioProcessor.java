package androidx.media3.exoplayer.audio;

import androidx.media3.common.C;
import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.audio.BaseAudioProcessor;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes21.dex */
public final class ChannelMappingAudioProcessor extends BaseAudioProcessor {
    private int[] outputChannels;
    private int[] pendingOutputChannels;

    public void setChannelMap(int[] outputChannels) {
        this.pendingOutputChannels = outputChannels;
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public AudioProcessor.AudioFormat onConfigure(AudioProcessor.AudioFormat inputAudioFormat) throws AudioProcessor.UnhandledAudioFormatException {
        int[] outputChannels = this.pendingOutputChannels;
        if (outputChannels == null) {
            return AudioProcessor.AudioFormat.NOT_SET;
        }
        if (!Util.isEncodingLinearPcm(inputAudioFormat.encoding)) {
            throw new AudioProcessor.UnhandledAudioFormatException(inputAudioFormat);
        }
        boolean active = inputAudioFormat.channelCount != outputChannels.length;
        int i = 0;
        while (i < outputChannels.length) {
            int channelIndex = outputChannels[i];
            if (channelIndex >= inputAudioFormat.channelCount) {
                throw new AudioProcessor.UnhandledAudioFormatException("Channel map (" + Arrays.toString(outputChannels) + ") trying to access non-existent input channel.", inputAudioFormat);
            }
            active |= channelIndex != i;
            i++;
        }
        if (active) {
            return new AudioProcessor.AudioFormat(inputAudioFormat.sampleRate, outputChannels.length, inputAudioFormat.encoding);
        }
        return AudioProcessor.AudioFormat.NOT_SET;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void queueInput(ByteBuffer inputBuffer) {
        int[] outputChannels = (int[]) Preconditions.checkNotNull(this.outputChannels);
        int position = inputBuffer.position();
        int limit = inputBuffer.limit();
        int frameCount = (limit - position) / this.inputAudioFormat.bytesPerFrame;
        int outputSize = this.outputAudioFormat.bytesPerFrame * frameCount;
        ByteBuffer buffer = replaceOutputBuffer(outputSize);
        while (position < limit) {
            for (int channelIndex : outputChannels) {
                int inputIndex = (Util.getByteDepth(this.inputAudioFormat.encoding) * channelIndex) + position;
                switch (this.inputAudioFormat.encoding) {
                    case 2:
                    case 268435456:
                        buffer.putShort(inputBuffer.getShort(inputIndex));
                        break;
                    case 3:
                        buffer.put(inputBuffer.get(inputIndex));
                        break;
                    case 4:
                        buffer.putFloat(inputBuffer.getFloat(inputIndex));
                        break;
                    case 21:
                    case C.ENCODING_PCM_24BIT_BIG_ENDIAN /* 1342177280 */:
                        Util.putInt24(buffer, Util.getInt24(inputBuffer, inputIndex));
                        break;
                    case 22:
                    case C.ENCODING_PCM_32BIT_BIG_ENDIAN /* 1610612736 */:
                        buffer.putInt(inputBuffer.getInt(inputIndex));
                        break;
                    case C.ENCODING_PCM_DOUBLE /* 1879048192 */:
                        buffer.putDouble(inputBuffer.getDouble(inputIndex));
                        break;
                    default:
                        throw new IllegalStateException("Unexpected encoding: " + this.inputAudioFormat.encoding);
                }
            }
            position += this.inputAudioFormat.bytesPerFrame;
        }
        inputBuffer.position(limit);
        buffer.flip();
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    protected void onFlush(AudioProcessor.StreamMetadata streamMetadata) {
        this.outputChannels = this.pendingOutputChannels;
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    protected void onReset() {
        this.outputChannels = null;
        this.pendingOutputChannels = null;
    }
}
